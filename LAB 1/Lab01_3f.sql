SELECT DISTINCT LastName, FirstName
FROM Employees as E INNER JOIN Orders as O
	ON E.EmployeeID = O.EmployeeID
WHERE ShipCountry='USA'

--w FROM oraz ON wykorzystali�my aliasy. Zamiast wpisywa� Employees.EmployeeID u�yli�my skr�tu na "Employees" w postaci "E", przy "Orders" u�yli�my "O"
