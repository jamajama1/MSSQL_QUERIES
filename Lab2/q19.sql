USE Northwind



 SELECT DISTINCT ContactName
 FROM Orders O
 JOIN Customers C ON C.CustomerID = O.CustomerID
 WHERE OrderDate > '1998-01-15 00:00:00.000'