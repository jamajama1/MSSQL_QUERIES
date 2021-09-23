USE AdventureWorks2019


SELECT SUM(ProductID) As SumOfProducts
FROM Production.ProductInventory
GROUP BY ProductID



