SELECT TOP 1 WITH TIES C.ContactName, COUNT(O.OrderId) AS Ordersqty
FROM Customers AS C INNER JOIN Orders AS O
ON C.CustomerID=O.CustomerID
GROUP BY C.ContactName
ORDER BY Ordersqty DESC

--no clue