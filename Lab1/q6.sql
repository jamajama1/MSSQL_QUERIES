USE AdventureWorks2019

SELECT CONCAT(Name, Color) As Concatenation
FROM Production.Product
WHERE Color is NOT null