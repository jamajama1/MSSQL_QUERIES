USE Northwind

CREATE VIEW view_product_order_Jama
AS
SELECT ProductName, UnitsOnOrder
FROM Products


SELECT *
FROM view_product_order_Jama