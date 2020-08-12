"This query returns the sum of all population in the world"
SELECT SUM(population)
FROM world;

"This query returns all the continents in the world"
SELECT DISTINCT continent FROM world;

"This query returns the sum of all the GDP in Africa"
SELECT SUM(gdp) FROM world WHERE continent = 'Africa';

"This query returns the number of countries which as "
SELECT COUNT(*) FROM world WHERE area >= 1000000;

"This query returns the sum of the population of France, Germany, Spain"
SELECT SUM(population) FROM world WHERE name IN ('France','Germany','Spain');

"This query returns the continents and the number of countries by continents"
SELECT continent, COUNT(*) FROM world GROUP BY continent;

"This query returns the continents and the number of countries by continents with at 10 million in population"
SELECT continent, COUNT(*) FROM world WHERE population >= 10000000 GROUP BY continent;

"This query returns the continent with at least 100000000 in population"
SELECT continent FROM world x WHERE (SELECT SUM(population) FROM world y WHERE x.continent = y.continent) >= 100000000 GROUP BY continent;
