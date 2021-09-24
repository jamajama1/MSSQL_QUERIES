USE Northwind


SELECT DISTINCT C.ContactName
FROM Orders O
JOIN [Order Details] OD ON OD.OrderID = O.OrderID JOIN Products P ON P.ProductID = OD.ProductID
JOIN Customers C ON C.CustomerID = O.CustomerID
WHERE ShipCity != C.City
