USE AdventureWorks2019

SELECT Name
FROM Production.Product
WHERE Name LIKE 'SPO[^K]%'
ORDER BY Name