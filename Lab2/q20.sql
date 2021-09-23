USE Northwind


SELECT TOP 5 CustomerID, Max(OrderDate) as RecentOrder
FROM Orders
GROUP BY CustomerID 
ORDER BY RecentOrder DESC

-- Returned top 5 customers with the most recent orders, That's how I understood the question. 
-- Didn't understand what you meant by recent, hence top 5