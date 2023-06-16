SELECT TOP 1 WITH TIES *, LEN(LastName) AS DlugoscNazwiska
FROM Employees
ORDER BY DlugoscNazwiska DESC


--Rozwiązanie Filipa - lepsze
/*
select *
from Employees as E
where len(E.LastName) =
(select max(len(LastName))
 from Employees)
 */