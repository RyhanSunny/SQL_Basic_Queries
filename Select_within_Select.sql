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

--#3
/* List the name and continent of countries in the continents containing 
either Argentina or Australia. Order by name of the country.
*/
SELECT name, continent FROM world
  WHERE continent IN (SELECT continent FROM world
                      WHERE name IN ('Argentina', 'Australia'))
                  ORDER BY name

--#4
/* Which country has a population that is more than Canada but less than Poland? 
Show the name and the population.
*/
SELECT name, population FROM world
  WHERE population > (SELECT population FROM world
                      WHERE name = 'Canada')
    AND population < (SELECT population FROM world
                      WHERE name = 'Poland')                                     
                                     
