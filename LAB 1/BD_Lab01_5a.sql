SELECT orderid, orderdate, custid, empid
FROM Sales.Orders
WHERE MONTH(orderdate)='6' AND YEAR(orderdate)='2015'