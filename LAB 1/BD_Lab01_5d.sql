SELECT orderid, (qty*unitprice) AS totalvalue
FROM Sales.OrderDetails
WHERE (qty*unitprice)>10000
ORDER BY totalvalue DESC