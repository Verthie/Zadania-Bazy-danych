SELECT custid, orderdate, orderid, ROW_NUMBER() OVER(PARTITION BY custid ORDER BY orderid ASC) as rownum
FROM Sales.Orders
ORDER BY custid