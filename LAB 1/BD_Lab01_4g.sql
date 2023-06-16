SELECT FirstName, LastName ,(YEAR(GETDATE())-YEAR(BirthDate)) AS Age
FROM Employees