--SELECT TOP 1 WITH TIES LastName, (LEN(LastName)) AS Dlugosc
--FROM Employees
--ORDER BY Dlugosc DESC

SELECT LastName, (LEN(LastName)) AS Dlugosc
FROM Employees
WHERE LEN(LastName) = (SELECT MAX(LEN(LastName)) FROM Employees)