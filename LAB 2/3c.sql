SELECT empid, lastname, firstname
FROM HR.Employees
WHERE empid NOT IN
(SELECT DISTINCT O.empid
FROM Sales.Orders AS O
WHERE orderdate>='20160501')