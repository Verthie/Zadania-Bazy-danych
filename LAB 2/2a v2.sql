SELECT empid, firstname, lastname, n
FROM HR.Employees CROSS JOIN Nums
WHERE n<5

--nie u�ywa� ',' tylko CROSS JOIN w jego miejsce