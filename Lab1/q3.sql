USE AdventureWorks2019

SELECT ProductID, Name, Color, ListPrice
FROM Production.Product
WHERE Color is null