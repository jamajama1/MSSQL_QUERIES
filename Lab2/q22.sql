USE Northwind

SELECT * 
FROM 
(   SELECT C.CustomerID, Count(ProductID) AS CountOfProducts
    FROM Customers C
    JOIN Orders O ON O.CustomerID = C.CustomerID JOIN [Order Details] OD ON O.OrderID = OD.OrderID
    GROUP BY C.CustomerID
) As SubQ
WHERE CountOfProducts > 100
