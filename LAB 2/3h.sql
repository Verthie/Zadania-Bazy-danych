SELECT custid, ordermonth, qty, SUM(qty) OVER(PARTITION BY custid ORDER BY ordermonth) AS runqty
FROM Sales.CustOrders