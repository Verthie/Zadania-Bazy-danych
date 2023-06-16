SELECT DISTINCT C.custid, C.companyname
FROM Sales.Orders AS O 
INNER JOIN Sales.OrderDetails AS OD
ON O.orderid=OD.orderid
INNER JOIN Sales.Customers AS C
ON O.custid=C.custid
WHERE OD.productid=12
ORDER BY C.companyname

--w zadaniu nale¿y wyœwietliæ klientów którzy zamówili product o id 12