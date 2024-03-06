-- Weather Observation Station 6
-- Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION.
-- Your result cannot contain duplicates.

-- SOLUTION 1:
SELECT DISTINCT CITY 
FROM STATION
WHERE LOWER(LEFT(CITY,1)) IN ('a','e','i','o','u');

-- SOLUTION 2:
SELECT DISTINCT CITY
FROM STATION
WHERE CITY REGEXP '^[aeiou]';