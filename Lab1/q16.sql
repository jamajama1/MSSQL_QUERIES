USE AdventureWorks2019

SELECT ProductSubCategoryID
      , LEFT([Name],35) AS [Name]
      , Color, ListPrice 
FROM Production.Product
WHERE (NOT Color IN ('Red','Black')
      AND ProductSubCategoryID = 1)
      OR ListPrice BETWEEN 1000 AND 2000 
ORDER BY ProductID
