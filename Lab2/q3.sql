USE AdventureWorks2019


SELECT PSC.ProductSubcategoryID, COUNT(DISTINCT ProductID) AS CountedProducts
FROM Production.ProductSubcategory PSC 
JOIN Production.Product P ON PSC.ProductSubcategoryID = P.ProductSubcategoryID
GROUP BY PSC.ProductSubcategoryID

