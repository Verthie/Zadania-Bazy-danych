SELECT DISTINCT LastName, CustomerID
FROM Employees INNER JOIN Orders 
	ON Employees.EmployeeID = Orders.EmployeeID
WHERE CustomerID='ALFKI'

--Przy³¹czamy tabelê 'Orders' gdy¿ nie musimy 'Customers'. 'Orders' jest ju¿ po³¹czone z tabel¹ 'Customers' i zawiera "CustomerID"
--DISTINCT wyœwietla rekordy bez powtórzeñ (niektórzy pracownicy mieli wiêcej ni¿ jedno doczynienie z tym samym klientem, dlatego wyœwietlaj¹ siê kilka razy)