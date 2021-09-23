USE Northwind

SELECT DISTINCT O.OrderDate, ProductName
FROM Orders O
JOIN [Order Details] OD ON O.OrderID = OD.OrderID 
JOIN Products P ON P.ProductID = OD.ProductID