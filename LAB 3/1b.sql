SELECT TOP 1 WITH TIES OrderID, DATEDIFF(DAY, OrderDate, ShippedDate) AS DniRealizowane
FROM Orders
ORDER BY DniRealizowane DESC

--FP Rozwiązanie - To jest źle, na pewno nie może być RequiredDate
select OrderID,DATEDIFF(DAY,OrderDate,RequiredDate) AS 'Dni'
from Orders
where DATEDIFF(DAY,OrderDate,RequiredDate) = (
SELECT MAX(DATEDIFF(DAY,OrderDate,RequiredDate)) 
from Orders)