USE Northwind

SELECT DISTINCT C.City
FROM Customers C, Employees E
Where CustomerID NOT IN (
    SELECT CustomerID
    FROM Orders 
) AND EmployeeID IN (
    SELECT EmployeeID
    FROM Orders 
)



