SELECT E.empid, MAX(O.orderdate) AS maxorderdate
FROM HR.Employees AS E
INNER JOIN Sales.Orders AS O
ON E.empid=O.empid
GROUP BY E.empid