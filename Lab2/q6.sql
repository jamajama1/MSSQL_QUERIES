USE AdventureWorks2019


SELECT ProductID, SUM(ProductID) As TheSum
FROM Production.ProductInventory
WHERE LocationID = 40 AND Quantity < 100
GROUP BY ProductID




