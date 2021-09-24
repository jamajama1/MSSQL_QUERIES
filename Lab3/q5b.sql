USE Northwind

SELECT DISTINCT City
FROM Customers
WHERE EXISTS (
    SELECT ShipCity, COUNT(ShipCity)
    FROM Orders
    GROUP BY ShipCity
    HAVING COUNT(ShipCity) >= 2 
)

