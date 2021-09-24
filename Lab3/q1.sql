USE Northwind

SELECT DISTINCT C.City
FROM Customers C
JOIN Employees E ON C.City = E.City