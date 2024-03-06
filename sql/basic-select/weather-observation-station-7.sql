-- Weather Observation Station 7
-- Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. 
-- Your result cannot contain duplicates.

-- SOLUTION 1:
SELECT DISTINCT CITY
FROM STATION
WHERE LOWER(RIGHT(CITY,1)) IN ('a','e','i','o','u');

-- SOLUTION 2:
SELECT DISTINCT CITY
FROM STATION
WHERE CITY REGEXP '[aeiou]$';