SELECT DISTINCT LastName, FirstName
FROM Employees as E INNER JOIN Orders as O
	ON E.EmployeeID = O.EmployeeID
WHERE ShipCountry='USA'

--w FROM oraz ON wykorzystaliœmy aliasy. Zamiast wpisywaæ Employees.EmployeeID u¿yliœmy skrótu na "Employees" w postaci "E", przy "Orders" u¿yliœmy "O"
