USE AdventureWorks2019

SELECT ProductID, Name, Color, ListPrice
FROM Production.Product
WHERE NOT Color is null