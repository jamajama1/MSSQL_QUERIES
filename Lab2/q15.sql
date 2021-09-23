USE Northwind


SELECT TOP 5 ShipPostalCode
FROM (
SELECT DISTINCT O.ShipPostalCode, COUNT(OD.ProductID) as COUNT
FROM Orders O
JOIN [Order Details] OD ON O.OrderID = OD.OrderID
GROUP BY O.ShipPostalCode
) AS Test
ORDER BY COUNT DESC
