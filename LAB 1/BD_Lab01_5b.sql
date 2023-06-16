SELECT orderid, EOMONTH(orderdate) as orderdate, custid, empid
FROM Sales.Orders