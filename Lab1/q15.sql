USE AdventureWorks2019

SELECT DISTINCT ProductSubcategoryID, Color
FROM Production.Product
WHERE Color IS NOT NULL AND ProductSubcategoryID IS NOT NULL


-- Different interpretation of question (both queries run)
/*
SELECT DISTINCT (CAST(ProductSubcategoryID as nvarchar) + ' ' + Color) as Unique_Combination
FROM Production.Product
WHERE Color IS NOT NULL AND ProductSubcategoryID IS NOT NULL
*/