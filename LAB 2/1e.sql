SELECT ProductID
FROM Products
EXCEPT
SELECT P.ProductID
FROM [Order Details] as OD INNER JOIN Products AS P
ON OD.ProductID=P.ProductID

--no idea man