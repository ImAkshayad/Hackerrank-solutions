-- Weather Observation Station 8
-- Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both their first and last characters. 
-- Your result cannot contain duplicates.

-- SOLUTION 1:
SELECT DISTINCT CITY
FROM STATION
WHERE (LOWER(RIGHT(CITY,1)) IN ('a','e','i','o','u')) AND (LOWER(LEFT(CITY,1)) IN ('a','e','i','o','u'));

-- SOLUTION 2:
SELECT DISTINCT CITY
FROM STATION
WHERE CITY REGEXP '^[aeiou].*[aeiou]$';