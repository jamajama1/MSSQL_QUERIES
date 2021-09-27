USE Northwind


CREATE PROCEDURE sp_birthday_employees_Jama
@birthday_employees_Jama VARCHAR(20),
@employee_name VARCHAR(20)
AS
BEGIN
DECLARE @SQL VARCHAR(MAX)
SET @SQL = '
CREATE TABLE '+@birthday_employees_Jama +' (
    '+ @employee_name +' VARCHAR(20) NOT NULL
) ON PRIMARY'

EXECUTE (@SQL)

INSERT INTO birthday_employees_Jama (@employee_name)
SELECT FirstName FROM Employees WHERE MONTH(BirthDate) = 2
END
