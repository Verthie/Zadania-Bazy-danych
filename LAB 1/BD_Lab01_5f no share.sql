SELECT empid, COUNT(*) AS numorders
FROM Sales.Orders
--WHERE orderdate < '20160501'
GROUP BY empid
HAVING MAX(orderdate) < '20160501';

--Roznica miedzy pierwszym, a drugim zapytaniem polega na wykorzystanej instrukcji warunkowej. Intrukcja WHERE wykorzystywana jest do filtrowania rekordów, natomiast HAVING stosowane jest do filtrowania grupy rekordów.
