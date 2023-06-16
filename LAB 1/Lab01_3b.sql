SELECT TOP 1 P1.UnitPrice, P2.UnitPrice, (P1.UnitPrice - P2.UnitPrice) AS Roznica
FROM Products AS P1, Products AS P2
ORDER BY Roznica DESC

--P1.UnitPrice, P2.UnitPrice pozwoli�o na utworzenie kwerendy, w ten spos�b wykorzystali�my t� sam� kolumn� (UnitPrice) z tabeli Products
--FROM Products AS P1, Products AS P2 => oznacza wyb�r kolumn z tabeli Products podw�jnie co pozwala na wykorzystanie dw�ch tych samych kolumn
--Trzecia kolumna to utworzona r�nica dw�ch kolumn, znajdujemy najwi�ksz� r�nic� sortuj�c t� kolumn� od najwi�kszego w d�
--SELECT TOP 1 Pozwala na wyodr�bnienie 1 wiersza