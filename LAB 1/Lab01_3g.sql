SELECT DISTINCT ProductName
FROM Orders AS O INNER JOIN [Order Details] AS OD
	ON O.OrderID=OD.OrderID
	INNER JOIN Products AS P
	ON OD.ProductID=P.ProductID
--WHERE OrderDate>'1995-12-31' AND  OrderDate<'1997-01-01'
WHERE YEAR(OrderDate) = 1996

--Funkcje które warto zapamiêtaæ: YEAR(), MONTH(), DAY() - zwracaj¹ rok, miesi¹c i dzieñ