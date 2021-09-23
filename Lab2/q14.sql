USE Northwind

SELECT Distinct ProductID
FROM Orders O
JOIN [Order Details] OD ON O.OrderID = OD.OrderID
WHERE DATEDIFF(YEAR, OrderDate, GETDATE()) <= 25


