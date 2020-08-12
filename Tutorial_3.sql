"This query returns the year, winner, and subject of all noble prizes in 1950"
SELECT yr, subject, winner FROM nobel
WHERE yr = 1950

"This query returns the winner of the literature nobel in 1962"
SELECT winner FROM nobel
 WHERE yr = 1962
   AND subject = 'Literature'

"This query returns the year when Albert Einstein won a prize"
SELECT yr, subject FROM nobel
WHERE winner = 'Albert Einstein'

"This query returns the changes the name of all prizes from 2000 to Peace"
SELECT winner FROM nobel 
WHERE subject = 'Peace'  and yr >= 2000

"This query returns all the winners of literature from 1980 to 1989"
SELECT * FROM nobel 
WHERE subject = 'Literature' AND yr >= 1980 AND yr <= 1989;

"This query returns the prize year, subject of all the chosen presidents"
SELECT * FROM nobel
WHERE winner IN ('Theodore Roosevelt',
                  'Woodrow Wilson',
                  'Jimmy Carter',
                   'Barack Obama');

"This query returns all the winners with first name John"
SELECT winner FROM nobel 
WHERE winner LIKE 'John%'

"This query returns the names of all physics winners in 1980 and chemistry winners inn 1984"
SELECT * FROM nobel 
WHERE subject = 'Physics' AND yr = 1980 OR subject = 'Chemistry' AND yr = 1984

"This query returns the name of people who won a medicine prize before 1910 and people who won a literature prize after 2004"
SELECT * FROM nobel WHERE subject = 'Medicine' AND yr < 1910 OR subject = 'Literature' AND yr >= 2004

"This query returns the details of prize winner Peter Grunberg"
SELECT winner, yr, subject FROM nobel 
WHERE winner = 'Peter Grunberg'

"This query returns the details of prize winner Eugene O'Neil"
SELECT winner, yr, subject FROM nobel 
WHERE winner = "Eugene O'Neil"

"This query returns the details of winner starting with Sir by descendant year of prize"
Select winner, yr, subject FROM nobel 
WHERE winner LIKE 'Sir%' ORDER BY yr DESC, winner

"This query returns the winners of all subjects but chemistry and physic winners last"
SELECT winner, subject FROM nobel
WHERE yr=1984
ORDER BY subject IN ('Physics','Chemistry'), subject,winner

