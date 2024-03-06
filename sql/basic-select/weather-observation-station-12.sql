-- Weather Observation Station 12
-- Query the list of CITY names from STATION that do not start with vowels and do not end with vowels. 
-- Your result cannot contain duplicates.

-- SOLUTION 1:
SELECT DISTINCT CITY
FROM STATION
WHERE (LOWER(LEFT(CITY,1)) NOT IN ('a','e','i','o','u')) AND (LOWER(RIGHT(CITY,1)) NOT IN ('a','e','i','o','u'));

-- SOLUTION 2:
SELECT DISTINCT CITY
FROM STATION
WHERE CITY REGEXP '^[^aeiou].*[^aeiou]$';