/*
SELECT TOP 4 orderid, orderdate, custid, empid
FROM Sales.Orders
WHERE custid IN(
SELECT TOP 1 WITH TIES O.custid
FROM Sales.Orders AS O
GROUP BY O.custid
ORDER BY MAX(orderdate) DESC)
ORDER BY orderid DESC
*/

SELECT orderid, orderdate, custid, empid
FROM Sales.Orders
WHERE orderdate =
(SELECT TOP 1 orderdate
FROM Sales.Orders
ORDER BY orderdate DESC)
ORDER BY orderid DESC