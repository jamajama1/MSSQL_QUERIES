USE AdventureWorks2019

SELECT Name, ListPrice
FROM Production.Product
WHERE Name LIKE 'A%' OR Name LIKE 'S%'
ORDER BY Name