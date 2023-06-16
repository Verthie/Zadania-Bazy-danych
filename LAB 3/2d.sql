SELECT orderid, orderdate, custid, empid, ROW_NUMBER() OVER(ORDER BY orderid, orderdate) AS rownum
FROM Sales.Orders