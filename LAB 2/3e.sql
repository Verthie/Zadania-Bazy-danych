SELECT custid, orderid, orderdate, empid
FROM Sales.Orders AS O
WHERE orderdate =
(SELECT MAX(O2.orderdate)
FROM Sales.Orders AS O2
WHERE O2.custid=O.custid)
ORDER BY custid

/* Z�E (MOJE ROZWI�ZANIE)
SELECT custid, MAX(orderdate) AS orderdate
FROM Sales.Orders
GROUP BY custid

--Where da 57 i 22??? Wait kto� m�g� z�o�y� wi�cej ni� jedno zam�wienie tego samego dnia - it's custid 40 btw
--totally not finished :(
*/