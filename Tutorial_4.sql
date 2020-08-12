"This query returns all country greater than Russia in population"
SELECT name FROM world
WHERE population >
     (SELECT population FROM world
      WHERE name='Russia')

"This query returns all countries with GDP greater than United Kingdom"
SELECT name FROM world 
WHERE gdp/population > 
    (SELECT gdp/population FROM world 
    WHERE name = 'United Kingdom')

"This query returns all countries that are in the same continent as Argentina or Australia"
SELECT name, continent FROM world 
WHERE continent IN 
    (SELECT continent FROM world 
    WHERE name IN ('Argentina', 'Australia')) ORDER BY name

"This query returns all the countries which have a population greater than Canada but less than Poland"
SELECT name, population FROM world
WHERE population > 
    (SELECT population FROM world 
    WHERE name = 'Canada') AND population < (SELECT population FROM world WHERE name = 'Poland')

"This query returns all the countries in Europe and their population percentage of Germany"
SELECT name, CONCAT(ROUND(population/(SELECT population FROM world 
WHERE name = 'Germany')*100), '%') FROM world 
WHERE continent = 'Europe'

"This query returns all the countries which have the GDP greater than every country in Europe"
SELECT name FROM world 
WHERE gdp > ALL(SELECT gdp FROM world WHERE gdp > 0 AND continent = 'Europe')

"This query returns the largest countries in each continent by area"
SELECT continent, name, area FROM world x
WHERE area >= ALL(SELECT area FROM world y WHERE x.continent = y.continent AND y.area>0);

"This query returns the first country of each continent"
SELECT continent, name FROM world x WHERE name <= ALL(SELECT name FROM world y WHERE x.continent = y.continent);

"This query returns all continents where all countries have a population less than 250000000"
SELECT name, continent, population FROM world WHERE continent IN (SELECT continent FROM world  x WHERE 25000000 >= (SELECT MAX(population) FROM world y WHERE x.continent = y.continent));
or
SELECT y.name, y.continent, y.population
FROM world AS y
JOIN
(SELECT continent,max(population)
FROM world
GROUP BY continent
HAVING max(population) <= 25000000) AS x
ON y.continent = x.continent

"This query returns all countries which have 3 times the population of countries in the same continent"
SELECT name, continent FROM world x
WHERE population > ALL(SELECT 3*population FROM world y WHERE x.continent = y.continent AND x.name <> y.name)
