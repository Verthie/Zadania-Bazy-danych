SELECT E.EmployeeID, E.FirstName, E.LastName
FROM Orders AS O INNER JOIN
(SELECT CustomerID, COUNT(EmployeeID) AS Employeeqty
FROM Orders
GROUP BY CustomerID
HAVING COUNT(EmployeeID)<2) AS K1
ON O.CustomerID=K1.CustomerID
INNER JOIN Employees AS E
ON O.EmployeeID=E.EmployeeID

--Rozwiązanie Krzysztofa
/*
SELECT EmployeeID
FROM Orders INNER JOIN

(SELECT CustomerID, COUNT(EmployeeID) as Quantity
FROM Orders
GROUP BY CustomerID) as SubQ
ON Orders.CustomerID = SubQ.CustomerID
WHERE Quantity = 1
*/