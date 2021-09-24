USE Northwind


SELECT TOP 5 ProductName, O.ShipCity, CAST(ROUND(AVG(OD.UnitPrice),2) AS DECIMAL(18,2)) AS AvgPrice, MAX(O.OrderID) AS Quantity
FROM Products P
JOIN [Order Details] OD ON OD.ProductID = P.ProductID JOIN Orders O ON O.OrderID = OD.OrderID
GROUP BY ProductName, O.ShipCity
ORDER BY Quantity DESC


