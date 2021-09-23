USE AdventureWorks2019


SELECT ProductID, Shelf, Avg(Quantity) As TheAvg
FROM Production.ProductInventory
WHERE Shelf != 'N/A'
GROUP BY Shelf, ProductID







