USE Northwind


SELECT O.ShipCity, Count(ShipCity) AS TotalProductsOrdered
FROM Products P
JOIN [Order Details] OD ON OD.ProductID = P.ProductID JOIN Orders O ON O.OrderID = OD.OrderID 
GROUP BY O.ShipCity