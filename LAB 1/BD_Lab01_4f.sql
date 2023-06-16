--SELECT COUNT(EmployeeID) AS IloscKierownikow
--FROM Employees
--WHERE ReportsTo  IS NULL


SELECT LastName, FirstName, Title, ReportsTo, EmployeeID
FROM Employees
WHERE EmployeeID in
	(SELECT DISTINCT ReportsTo FROM Employees)