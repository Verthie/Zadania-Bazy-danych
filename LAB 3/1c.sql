SELECT DISTINCT K1.ContactName
FROM
(
SELECT C.ContactName, O.OrderID, O.OrderDate, 
LAG(O.OrderDate) OVER(PARTITION BY C.CustomerID ORDER BY O.OrderDate) AS PreviousDate, 
DATEDIFF(DAY, LAG(O.OrderDate) OVER(PARTITION BY C.CustomerID ORDER BY O.OrderDate), O.OrderDate) AS DaysDifference
FROM Orders AS O
INNER JOIN Customers AS C
ON O.CustomerID=C.CustomerID
) AS K1
WHERE K1.DaysDifference>61



--Wszystkich rekord�w w tabeli Customers jest 91