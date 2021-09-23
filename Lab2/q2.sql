USE AdventureWorks2019


SELECT Count(DISTINCT Production.Product.ProductID)
FROM Production.Product
WHERE ProductSubcategoryID IS NOT NULL

--295