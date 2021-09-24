USE Northwind

SELECT DISTINCT C.City
FROM Customers C
LEFT JOIN Employees E ON C.City = E.City
WHERE E.City IS NULL