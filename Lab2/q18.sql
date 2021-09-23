USE Northwind


SELECT City, COUNT(CustomerID)
FROM Customers
GROUP BY City
HAVING COUNT(CustomerID) > 2
