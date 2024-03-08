-- Amber's conglomerate corporation just acquired some new companies.  
-- Given the table schemas below, write a query to print the company_code, founder name, 
-- total number of lead managers, total number of senior managers, total number of managers,
--  and total number of employees. Order your output by ascending company_code.

SELECT DISTINCT c.COMPANY_CODE, c.FOUNDER, COUNT(DISTINCT l.LEAD_MANAGER_CODE), COUNT(DISTINCT s.SENIOR_MANAGER_CODE), COUNT(DISTINCT m.MANAGER_CODE), COUNT(DISTINCT e.EMPLOYEE_CODE)
FROM COMPANY c, LEAD_MANAGER l,SENIOR_MANAGER s, MANAGER m, EMPLOYEE e
WHERE c.COMPANY_CODE = l.COMPANY_CODE
AND l.LEAD_MANAGER_CODE = s.LEAD_MANAGER_CODE
AND s.SENIOR_MANAGER_CODE = m.SENIOR_MANAGER_CODE
AND m.MANAGER_CODE = e.MANAGER_CODE
GROUP BY c.COMPANY_CODE, c.FOUNDER
ORDER BY c.COMPANY_CODE;