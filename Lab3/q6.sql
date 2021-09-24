USE Northwind


SELECT O.ShipCity
FROM Orders O
JOIN [Order Details] OD ON OD.OrderID = O.OrderID JOIN Products P ON P.ProductID = OD.ProductID
GROUP BY O.ShipCity
HAVING COUNT(P.ProductID) >= 2
