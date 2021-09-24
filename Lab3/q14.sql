-- Employee (empid integer, mgrid integer, deptid integer, salary money) 
-- Dept (deptid integer, deptname varchar(20))

SELECT TOP 3 SalCnt.empid, Max(SalCnt.salary) AS MaxSalOfEmployees
FROM (
    SELECT D.deptname, E.empid, E.salary
    FROM Employee E
    JOIN Dept D ON E.deptid = D.deptid
) SalCnt
GROUP BY EmpCnt.deptname, SalCnt.empid, SalCnt.salary
ORDER BY SalCnt.salary

