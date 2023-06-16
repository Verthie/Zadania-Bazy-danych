SELECT DISTINCT LastName
FROM Employees INNER JOIN Orders 
	ON Employees.EmployeeID = Orders.EmployeeID
Where Orders.OrderDate < '1996-08-01'
