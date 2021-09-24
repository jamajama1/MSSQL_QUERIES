-- Employee (empid integer, mgrid integer, deptid integer, salary money) 
-- Dept (deptid integer, deptname varchar(20))


SELECT * 
FROM Employee 
WHERE empid NOT IN (
    SELECT DISTINCT mgrid 
    FROM Employee 
    WHERE mgrid IS NOT NULL
)


