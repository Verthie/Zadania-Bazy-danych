SELECT FirstName, LastName, Title
FROM dbo.Employees
ORDER BY 3,2 ASC

--ORDER BY 3,2 ASC oznacza sortowanie rosn¹ce dla kolumny 3 a nastêpnie posortowanie rosn¹co dla kolumny 2
--Sortowanie 2 kolumny wp³ywa jedynie na rekordy z tytu³em "Sales Representative"