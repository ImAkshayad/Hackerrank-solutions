-- Weather Observation Station 10
-- Query the list of CITY names from STATION that do not end with vowels. 
-- Your result cannot contain duplicates.

-- SOLUTION 1:
SELECT DISTINCT CITY
FROM STATION
WHERE LOWER(RIGHT(CITY,1)) NOT IN ('a','e','i','o','u');

-- SOLUTION 2:
SELECT DISTINCT CITY
FROM STATION
WHERE CITY REGEXP '[^aeiou]$';