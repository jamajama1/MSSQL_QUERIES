USE Northwind

CREATE PROCEDURE sp_product_order_quantity_Jama
@productid int,
@totalQuantitiesOrdered VARCHAR(20) OUT
AS
SELECT @totalQuantitiesOrdered = UnitsOnOrder
FROM Products
WHERE ProductID = @productid

BEGIN 
DECLARE @order VARCHAR(20)
EXECUTE sp_product_order_quantity_Jama 2, @order OUT
PRINT @order
END