SELECT DISTINCT E.City
FROM Employees AS E
INTERSECT
SELECT C.City
FROM Customers AS C

/*
SELECT DISTINCT E.City
FROM Employees AS E
WHERE EXISTS(
SELECT C.City
FROM Customers AS C
WHERE E.City=C.City)
*/