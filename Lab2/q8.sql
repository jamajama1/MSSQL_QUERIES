USE AdventureWorks2019


SELECT Avg(Quantity) As AVG
FROM Production.ProductInventory
WHERE LocationID = 10
GROUP BY ProductID






