-- Weather Observation Station 9
-- Query the list of CITY names from STATION that do not start with vowels. 
-- Your result cannot contain duplicates.

-- SOLUTION 1:
SELECT DISTINCT CITY 
FROM STATION
WHERE LOWER(LEFT(CITY,1)) NOT IN ('a','e','i','o','u');

-- SOLUTION 2:
SELECT DISTINCT CITY
FROM STATION
WHERE CITY REGEXP '^[^aeiou]';