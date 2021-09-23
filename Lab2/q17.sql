USE Northwind


SELECT City, COUNT(CustomerID)
FROM Customers
GROUP BY City
