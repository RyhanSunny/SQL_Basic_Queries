
--Give the name and the per capita GDP for those countries with a population of at least 200 million.
SELECT name, gdp/population FROM world 
WHERE population > 200000000

--Show the name and population in millions for the countries of the continent 'South America'. Divide the population by 1000000 to get population in millions.
SELECT name, population/1000000 FROM world 
WHERE continent LIKE 'South America'

--Show the name and population for France, Germany, Italy
SELECT name, population FROM world 
WHERE name IN ('France', 'Germany', 'Italy')

--Show the countries which have a name that includes the word 'United'
SELECT name FROM world
where name LIKE ('United%')

--Two ways to be big: A country is big if it has an area of more than 3 million sq km or it has a population of more than 250 million.
--Show the countries that are big by area or big by population. Show name, population and area.	
SELECT name, population, area FROM world 
WHERE area > 3000000 OR population > 250000000

--Exclusive OR (XOR). Show the countries that are big by area or big by population but not both. Show name, population and area.
SELECT name, population, area FROM world 
WHERE area > 3000000 XOR population > 250000000