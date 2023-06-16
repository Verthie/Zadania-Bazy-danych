SELECT K1.CategoryName, K1.ProductName, K1.UnitPrice
FROM
(SELECT TOP 8 ROW_NUMBER() OVER(PARTITION BY C.CategoryName ORDER BY P.UnitPrice ASC) AS CatRow, C.CategoryName, P.ProductName, P.UnitPrice 
FROM Products AS P INNER JOIN Categories AS C 
ON P.CategoryID=C.CategoryID
ORDER BY CatRow ASC) AS K1


/*
SELECT C.CategoryName, MIN(P.UnitPrice) AS SmallestPrice
FROM Products AS P INNER JOIN Categories AS C
ON P.CategoryID=C.CategoryID
GROUP BY C.CategoryName

I dont know man... I just feel so effin dumb
*/ 