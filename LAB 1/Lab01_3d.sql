SELECT DISTINCT LastName, CustomerID
FROM Employees INNER JOIN Orders 
	ON Employees.EmployeeID = Orders.EmployeeID
WHERE CustomerID='ALFKI'

--Przy��czamy tabel� 'Orders' gdy� nie musimy 'Customers'. 'Orders' jest ju� po��czone z tabel� 'Customers' i zawiera "CustomerID"
--DISTINCT wy�wietla rekordy bez powt�rze� (niekt�rzy pracownicy mieli wi�cej ni� jedno doczynienie z tym samym klientem, dlatego wy�wietlaj� si� kilka razy)