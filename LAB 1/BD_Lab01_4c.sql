SELECT C.CategoryName, ROUND(AVG((OD.UnitPrice-(OD.Discount*OD.UnitPrice))*Quantity),2) AS OrderPriceAVG
FROM [Order Details] AS OD INNER JOIN Products AS P
	ON OD.ProductID=P.ProductID
	INNER JOIN Categories AS C
	ON P.CategoryID=C.CategoryID
WHERE C.CategoryName < 'e' --Wy�wietlanie kategorii, kt�re zaczynaj� si� na liter� mniejsz� od 'e' (a,b,c,d)
--WHERE C.CategoryName LIKE '[a-z]%' <= Inny spos�b powy�szej Instrukcji
GROUP BY C.CategoryName
HAVING ROUND(AVG((OD.UnitPrice-(OD.Discount*OD.UnitPrice))*Quantity),2) > 500