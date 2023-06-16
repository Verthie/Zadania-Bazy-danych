--Rozwi¹zanie Lidera z wykorzystaniem podzapytañ:

SELECT FirstName, LastName, e.Title, HireDate
FROM Employees as e
INNER JOIN (
	SELECT MIN(HireDate) AS Czas, Title FROM Employees GROUP BY Title) AS b
ON e.HireDate=b.Czas AND e.Title = b.Title