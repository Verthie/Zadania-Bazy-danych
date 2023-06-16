SELECT C.custid, C.companyname, CASE
WHEN O.orderdate IS NULL THEN 'No'
ELSE 'Yes'
END AS HasOrderOn20160212
FROM Sales.Customers as C LEFT OUTER JOIN Sales.Orders AS O
ON C.custid=O.custid AND O.orderdate='20160212'
ORDER BY C.custid ASC