USE AdventureWorks2019


SELECT Color, Class, COUNT(DISTINCT ProductID) AS TheCount, CAST(Round(Avg(ListPrice),2, 1) As DECIMAL(18,2)) As AvgPrice 
FROM Production.Product
WHERE Color IS NOT NULL AND Class IS NOT NULL
GROUP BY Color, Class







