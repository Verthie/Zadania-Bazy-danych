SELECT C.ContactName, C.Address
FROM Customers AS C
INNER JOIN
(SELECT TOP 1 WITH TIES C.CustomerID, COUNT(O.OrderID) AS Orderqty
FROM Orders AS O
INNER JOIN Customers AS C
ON O.CustomerID=C.CustomerID
GROUP BY C.CustomerID
ORDER BY Orderqty DESC) AS K1
ON C.CustomerID=K1.CustomerID