USE AdventureWorks2019

SELECT ProductID, Name, Color
FROM Production.Product
WHERE Color IN ('Black', 'Blue') 