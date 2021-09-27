USE Northwind

CREATE TABLE people_Jama (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Name VARCHAR(20) NOT NULL,
    City INT NOT NULL
)
CREATE TABLE city_Jama (
    Id INT PRIMARY KEY IDENTITY(1,1),
    City VARCHAR(20) NOT NULL
)

INSERT INTO city_Jama VALUES ('Seattle')
INSERT INTO city_Jama VALUES ('Green Bay')

INSERT INTO people_Jama VALUES ('Aaron Rogers', 2)
INSERT INTO people_Jama VALUES ('Russell Wilson', 1)
INSERT INTO people_Jama VALUES ('Jody Nelson', 2)

DELETE FROM city_Jama WHERE city = 'Seattle'
INSERT INTO city_Jama VALUES ('Madison')
UPDATE people_Jama SET City = 3 WHERE City = 1

CREATE VIEW Packers_Jama
AS
SELECT * FROM people_Jama WHERE city = 2

SELECT * 
FROM Packers_Jama