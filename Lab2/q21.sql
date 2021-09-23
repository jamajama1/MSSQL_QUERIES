USE Northwind


SELECT ContactName, COUNT(OrderID) OrderCount
FROM Customers C
JOIN Orders O ON O.CustomerID = C.CustomerID
GROUP BY ContactName
