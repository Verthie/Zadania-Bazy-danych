SELECT K1.custid, K1.numorders, K1.totalqty
FROM Sales.Customers AS C INNER JOIN
(SELECT C.custid, COUNT(OD.orderid) AS numorders, SUM(OD.qty) AS totalqty
FROM Sales.Orders AS O INNER JOIN Sales.Customers AS C
ON O.custid=C.custid
INNER JOIN Sales.OrderDetails AS OD
ON O.orderid=OD.orderid
GROUP BY C.custid) AS K1
ON C.custid=K1.custid
WHERE C.country='USA'