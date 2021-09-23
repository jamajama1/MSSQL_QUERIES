USE AdventureWorks2019


SELECT COUNT(ProductID)
FROM Production.Product
WHERE ProductSubcategoryID IS NULL

