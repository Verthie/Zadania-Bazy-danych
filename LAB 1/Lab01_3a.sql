SELECT FirstName, LastName, Title
FROM dbo.Employees
ORDER BY 3,2 ASC

--ORDER BY 3,2 ASC oznacza sortowanie rosn�ce dla kolumny 3 a nast�pnie posortowanie rosn�co dla kolumny 2
--Sortowanie 2 kolumny wp�ywa jedynie na rekordy z tytu�em "Sales Representative"