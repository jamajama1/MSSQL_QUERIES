USE Northwind


SELECT ProductName, COUNT(O.OrderID) AS TotalOrderQuantities
FROM Products P
JOIN [Order Details] OD ON OD.ProductID = P.ProductID JOIN Orders O ON O.OrderID = OD.OrderID 
GROUP BY ProductName