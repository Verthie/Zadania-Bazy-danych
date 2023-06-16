SELECT C.custid, companyname, orderid, orderdate
FROM Sales.Orders AS O RIGHT OUTER JOIN Sales.Customers AS C
ON O.custid=C.custid