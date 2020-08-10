"This query returns a table of the population of Germany"
SELECT population FROM world
  WHERE name = 'Germany'

"This query returns a table of the population of each country in the list"
SELECT name, population FROM world
  WHERE name IN ('Sweden', 'Norway', 'Denmark');

"This query returns the name of the countries which has an area within a given range"
SELECT name, area FROM world
  WHERE area BETWEEN 200000 AND 250000