USE Northwind

SELECT DISTINCT City
FROM Customers
WHERE City NOT IN (
    SElECT DISTINCT City
    FROM Employees
) 