SELECT C.custid, C.companyname
FROM Sales.Customers AS C
WHERE EXISTS
(SELECT *
FROM Sales.Orders AS O
WHERE O.custid=C.custid AND
O.orderdate BETWEEN '20150101' AND '20151231')
AND NOT EXISTS
(SELECT *
FROM Sales.Orders AS O
WHERE O.custid=C.custid AND
O.orderdate BETWEEN '20160101' AND '20161231')