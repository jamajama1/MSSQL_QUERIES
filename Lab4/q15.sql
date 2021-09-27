USE Northwind

-- Given the hypothetical table in question, This is how you find top female student
SELECT TOP 1 Marks, DENSE_RANK() OVER (ORDER BY Marks DESC) As Rank
FROM Students
WHERE Sex = 'F'
