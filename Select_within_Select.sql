--Database from: https://sqlzoo.net/wiki/SELECT_within_SELECT_Tutorial

--#1
/* List each country name where the population is larger than that of 'Russia'.
world(name, continent, area, population, gdp)
*/
SELECT name FROM world
  WHERE population >
     (SELECT population FROM world
      WHERE name='Russia')

--#2
/*Show the countries in Europe with a per capita GDP greater than 'United Kingdom'.
per capita gdp: gdp/population
*/
SELECT name FROM world
WHERE continent = 'Europe' 
AND gdp/population > (SELECT gdp/population FROM world 
                      WHERE name = 'United Kingdom')

