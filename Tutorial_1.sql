"This query returns a table with the countries that starts with Y"
SELECT name FROM world
  WHERE name LIKE 'Y%'

"This query returns a table with the countries that ends with y"
SELECT name FROM world
  WHERE name LIKE '%y'

"This query returns a table with the countries that contains an x"
SELECT name FROM world
  WHERE name LIKE '%x%'

T"his query returns a table with the countries that ends with land"
SELECT name FROM world
  WHERE name LIKE '%land'

"This query returns a table of countries that starts with a C and ends with ia"
SELECT name FROM world
  WHERE name LIKE 'C%ia'

"This query returns a table with the countries that ends with oo"
SELECT name FROM world
  WHERE name LIKE '%oo%'

"This query returns a table with countries which has 3 a's"
SELECT name FROM world
  WHERE name LIKE '%a%a%a%'

"This query returns a table with the countries which has t as the second character"
SELECT name FROM world
 WHERE name LIKE '_t%'
ORDER BY name

"This query returns a table with two o's separated by two characters"
SELECT name FROM world
 WHERE name LIKE '%o__o%'

"This query returns a table with countries with 4 characters"
SELECT name FROM world
 WHERE name LIKE '____'

"This query returns a table  with countries where the name is the same as the capital"
SELECT name
  FROM world
 WHERE name = capital;

"This query returns a table with countries which has City in their name"
SELECT name
  FROM world
 WHERE capital = concat(name, ' City');

"This query returns a table with countries which has the name of the country in the capital name"
SELECT capital,name FROM world WHERE capital LIKE concat('%', name, '%');

"This query returns a table where the capital is an extension of the name"
SELECT capital, name FROM world WHERE capital LIKE concat('%', name, '%') AND capital > name;

"This query returns a table where the capital is an extension of the name"
SELECT name, REPLACE(capital, name, '') FROM world WHERE capital LIKE concat('%', name, '%') AND capital > name;