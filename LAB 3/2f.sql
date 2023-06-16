WITH CTE AS
(
SELECT empid, mgrid, firstname, lastname
FROM HR.Employees
WHERE empid = 9
UNION ALL
SELECT E.empid, E.mgrid, E.firstname, E.lastname
FROM CTE
INNER JOIN HR.Employees AS E
ON CTE.mgrid=P.empid
)
SELECT empid, mgrid, firstname, lastname
FROM CTE