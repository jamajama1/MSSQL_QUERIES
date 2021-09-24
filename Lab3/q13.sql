-- Employee (empid integer, mgrid integer, deptid integer, salary money) 
-- Dept (deptid integer, deptname varchar(20))

SELECT EmpCnt.deptname, COUNT(empid) AS CountOfEmployees
FROM (
    SELECT D.deptname, E.empid 
    FROM Employee E
    JOIN Dept D ON E.deptid = D.deptid
) EmpCnt
GROUP BY EmpCnt.deptname

