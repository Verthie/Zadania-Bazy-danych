SELECT orderid, orderdate, custid, empid
FROM Sales.Orders
WHERE orderdate <> DATEFROMPARTS(YEAR(orderdate), 12, 31)

--Instrukcja warunkowa WHERE ma piorytet i jest wykonywana przed klauzul� SELECT, przez co WHERE nie b�dzie w stanie odwo�a� si� do kolumny o nowym nazewnictwie utworzonym w klauzuli SELECT
--Jednym z mo�liwych rozwi�za� jest nietworzenie kolumny z now� nazw� tylko wykorzystanie pe�nej instrukcji przy pisaniu warunku