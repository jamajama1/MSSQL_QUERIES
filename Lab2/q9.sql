USE AdventureWorks2019


SELECT ProductID, Shelf, Avg(Quantity) As TheAvg
FROM Production.ProductInventory
WHERE LocationID = 10
GROUP BY ProductID, Shelf






