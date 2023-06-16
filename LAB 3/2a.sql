SELECT orderid, orderdate, custid, empid
FROM Sales.Orders
WHERE orderdate <> DATEFROMPARTS(YEAR(orderdate), 12, 31)

--Instrukcja warunkowa WHERE ma piorytet i jest wykonywana przed klauzul¹ SELECT, przez co WHERE nie bêdzie w stanie odwo³aæ siê do kolumny o nowym nazewnictwie utworzonym w klauzuli SELECT
--Jednym z mo¿liwych rozwi¹zañ jest nietworzenie kolumny z now¹ nazw¹ tylko wykorzystanie pe³nej instrukcji przy pisaniu warunku