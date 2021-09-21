USE AdventureWorks2019

SELECT 'NAME: ' + Name + '-- COLOR: ' + Color as 'Name And Color'
FROM Production.Product
WHERE Color is NOT null