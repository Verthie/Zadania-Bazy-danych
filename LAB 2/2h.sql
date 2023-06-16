/*
SELECT DISTINCT K1.custid, K1.companyname, K2.orderid, K2.orderdate
FROM
(SELECT C.custid, C.companyname, O.orderid, O.orderdate
FROM Sales.Customers AS C LEFT OUTER JOIN Sales.Orders AS O
ON C.custid=O.custid) AS K1 LEFT OUTER JOIN
(SELECT C.custid, C.companyname, O.orderid, O.orderdate
FROM Sales.Customers AS C INNER JOIN Sales.Orders AS O
ON C.custid=O.custid
WHERE O.orderdate='20160212') AS K2
ON K1.custid=K2.custid
*/

SELECT C.custid, C.companyname, orderid, orderdate
FROM Sales.Customers AS C LEFT OUTER JOIN (
SELECT custid, orderid, orderdate
FROM Sales.Orders AS O
WHERE orderdate='20160212') AS O
ON C.custid=O.custid

/*
SELECT C.custid, C.companyname, O.orderid, O.orderdate
FROM Sales.Customers AS C LEFT OUTER JOIN Sales.Orders AS O
ON C.custid=O.custid AND orderdate='20160212'

bruh, why are we here? just to suffer?
*/