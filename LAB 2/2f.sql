SELECT C.custid, companyname
FROM Sales.Orders AS O RIGHT OUTER JOIN Sales.Customers AS C
ON O.custid=C.custid
WHERE O.orderid IS NULL