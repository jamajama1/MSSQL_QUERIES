USE Northwind

-- Given the hypothetical table in question, This is how you find top students based on gender
SELECT Marks, DENSE_RANK() OVER (PARTITION BY Sex ORDER BY Marks DESC) As Rank
FROM Students

