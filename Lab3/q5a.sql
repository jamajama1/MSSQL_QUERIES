USE Northwind

-- Interpretation where there is a buying customer with an order

SELECT DISTINCT C.City
FROM (
    SELECT CustomerID, City
    FROM Customers
    GROUP BY CustomerID, City
    HAVING COUNT(City) >= 2
    UNION ALL
    SELECT CustomerID, ShipCity
    FROM Orders 
    GROUP BY CustomerID, ShipCity
    HAVING COUNT(ShipCity) >= 2
) AS CitiesWithCustomers
JOIN Customers C ON C.CustomerID = CitiesWithCustomers.CustomerID
WHERE C.City = CitiesWithCustomers.City

/* 
-- Based on interpretation, Cities with at least 2 customers can be easily done with a single query. 
-- Based on my interpretation of the question, I could be wrong.

SELECT City, Count(City) NumberOfCustomers
FROM Customers
GROUP BY City
HAVING COUNT(City) >= 2 
*/

