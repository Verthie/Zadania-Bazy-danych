SELECT custid, orderid, orderdate, empid
FROM Sales.Orders
WHERE custid IN(
SELECT TOP 1 WITH TIES O.custid
FROM Sales.Orders AS O
GROUP BY O.custid
ORDER BY COUNT(*) DESC)