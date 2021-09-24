USE Northwind


SELECT City
FROM Employees E 
FULL JOIN Orders O ON E.City = O.ShipCity
WHERE O.OrderID IS NULL 
