SELECT C.custid, companyname, orderid, orderdate
FROM Sales.Customers AS C INNER JOIN Sales.Orders AS O
ON C.custid=O.custid
WHERE orderdate='20160212'