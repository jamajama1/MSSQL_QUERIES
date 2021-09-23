USE Northwind


SELECT TOP 5 ShipPostalCode
FROM (
SELECT DISTINCT O.ShipPostalCode, COUNT(OD.ProductID) as COUNT
FROM Orders O
JOIN [Order Details] OD ON O.OrderID = OD.OrderID
WHERE DATEDIFF(YEAR, O.OrderDate, GETDATE()) <= 25
GROUP BY O.ShipPostalCode
) AS Test
ORDER BY COUNT DESC
