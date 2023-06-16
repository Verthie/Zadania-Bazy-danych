SELECT CategoryName, AVG(UnitPrice) AS Average
FROM Products AS P INNER JOIN Categories AS C
	ON P.CategoryID=C.CategoryID
WHERE CategoryName <> 'Seafood'
GROUP BY CategoryName