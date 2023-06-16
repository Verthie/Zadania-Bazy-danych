SELECT O.empid, O.orderdate, O.orderid, O.custid
FROM Sales.Orders AS O
INNER JOIN
(SELECT E.empid, MAX(O.orderdate) AS maxorderdate
FROM HR.Employees AS E
INNER JOIN Sales.Orders AS O
ON E.empid=O.empid
GROUP BY E.empid) AS K1
ON O.empid=K1.empid
AND O.orderdate=K1.maxorderdate
ORDER BY O.empid DESC