SELECT K1.EmployeeID
FROM
(SELECT E.EmployeeID, COUNT(O.OrderID) AS Ordersqty, COUNT(O.ShippedDate) AS SameCountryOrdersqty
FROM Orders AS O
INNER JOIN Employees AS E
ON O.EmployeeID=E.EmployeeID
INNER JOIN [Order Details] AS OD
ON O.OrderID=OD.OrderID
INNER JOIN Products AS P
ON OD.ProductID=P.ProductID
INNER JOIN Suppliers AS S
ON P.SupplierID=S.SupplierID
WHERE E.Country=S.Country
GROUP BY E.EmployeeID) AS K1
WHERE Ordersqty>SameCountryOrdersqty


--WK Rozwiązanie - wynik jest inny czyli moje źle
WITH DL AS(
SELECT COUNT(OrderID) AS liczba
FROM Orders 
INNER JOIN Employees
ON Orders.EmployeeID=Employees.EmployeeID
WHERE Country=ShipCountry)
SELECT COUNT(OrderID), EmployeeID 
FROM Orders 
GROUP BY EmployeeID
HAVING COUNT(OrderID)> (SELECT * FROM DL)

--E.EmployeeID, O.OrderID, O.ShipCountry, E.Country

--2 grupy: Pracownicy z innego kraju ni� spedytorzy oraz Pracownicy z tego samego kraju co spedytorzy
--Nast�pnie ilo�� zam�wie� pierwszej grupy i ilo�� zam�wie� drugiej
--Nast�pnie wypisa� identyfikatory pracownik�w z pierwszej grupy kt�rzy mieli wi�ksz� ilo�� zrealizowanych zam�wie�