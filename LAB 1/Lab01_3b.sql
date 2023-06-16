SELECT TOP 1 P1.UnitPrice, P2.UnitPrice, (P1.UnitPrice - P2.UnitPrice) AS Roznica
FROM Products AS P1, Products AS P2
ORDER BY Roznica DESC

--P1.UnitPrice, P2.UnitPrice pozwoli³o na utworzenie kwerendy, w ten sposób wykorzystaliœmy t¹ sam¹ kolumnê (UnitPrice) z tabeli Products
--FROM Products AS P1, Products AS P2 => oznacza wybór kolumn z tabeli Products podwójnie co pozwala na wykorzystanie dwóch tych samych kolumn
--Trzecia kolumna to utworzona ró¿nica dwóch kolumn, znajdujemy najwiêksz¹ ró¿nicê sortuj¹c t¹ kolumnê od najwiêkszego w dó³
--SELECT TOP 1 Pozwala na wyodrêbnienie 1 wiersza