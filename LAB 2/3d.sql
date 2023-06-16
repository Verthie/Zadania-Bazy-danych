/*
SELECT C.country
FROM Sales.Customers AS C
EXCEPT
SELECT E.country
FROM HR.Employees AS E
*/

SELECT DISTINCT C.country
FROM Sales.Customers AS C
WHERE C.country NOT IN
(SELECT E.country
FROM HR.Employees AS E)