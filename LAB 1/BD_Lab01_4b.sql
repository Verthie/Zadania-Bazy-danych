SELECT C.CategoryName, ROUND(AVG((OD.UnitPrice-(OD.Discount*OD.UnitPrice))*Quantity),2) AS OrderPriceAVG
FROM [Order Details] AS OD INNER JOIN Products AS P
	ON OD.ProductID=P.ProductID
	INNER JOIN Categories AS C
	ON P.CategoryID=C.CategoryID
GROUP BY C.CategoryName