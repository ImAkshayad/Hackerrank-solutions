-- Revising the select query I
-- Query all columns for all American cities in the CITY table with populations larger than 100000. 
-- The CountryCode for America is USA.

SELECT * 
FROM CITY 
WHERE COUNTRYCODE = 'USA' AND POPULATION > 100000; 

-- Revising the select query II
-- Query the NAME field for all American cities in the CITY table with populations larger than 120000. 
-- The CountryCode for America is USA.

SELECT NAME
FROM CITY 
WHERE COUNTRYCODE = 'USA' AND POPULATION > 120000; 

-- SELECT BY ID
-- Query all columns for a city in CITY with the ID 1661.

SELECT *
FROM CITY
WHERE ID = 1661;

-- Japanese Cities' Attributes
-- Query all attributes of every Japanese city in the CITY table. 
-- The COUNTRYCODE for Japan is JPN.

SELECT *
FROM CITY 
WHERE COUNTRYCODE = 'JPN';

-- Japanese Cities' Names
-- Query the names of all the Japanese cities in the CITY table. 
-- The COUNTRYCODE for Japan is JPN.

SELECT NAME
FROM CITY 
WHERE COUNTRYCODE = 'JPN';