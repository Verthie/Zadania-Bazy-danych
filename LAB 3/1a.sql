SELECT DISTINCT C.ContactName
FROM Customers AS C
INNER JOIN Orders AS O ON C.CustomerID=O.CustomerID
INNER JOIN [Order Details] AS OD ON O.OrderID=OD.OrderID
INNER JOIN Products AS P ON OD.ProductID=P.ProductID
WHERE P.ProductID IN( --Warunek do wyświetlenia tylko tych elementów których produkt ID jest taki sam jak w poniższej tabeli
--Tablica wyświetla wszystkie ID produktów zamówione przez klienta o ID FRANR
SELECT P.ProductID AS IDProduktyFranra
FROM Customers AS C
INNER JOIN Orders AS O ON C.CustomerID=O.CustomerID
INNER JOIN [Order Details] AS OD ON O.OrderID=OD.OrderID
INNER JOIN Products AS P ON OD.ProductID=P.ProductID
WHERE C.CustomerID='FRANR')


--MW Rozwiązanie
SELECT DISTINCT O1.CustomerID, OD1.ProductID
FROM Orders AS O1
INNER JOIN [Order Details] AS OD1
ON O1.OrderID = OD1.OrderID
WHERE ProductID IN
    (SELECT OD.ProductID
    FROM Orders AS O
    INNER JOIN [Order Details] AS OD
    ON O.OrderID = OD.OrderID
    WHERE CustomerID = 'FRANR')
    AND
    O1.CustomerID != 'FRANR'