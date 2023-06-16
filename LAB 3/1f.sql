SELECT OrderDate AS DayWithHighestQty
FROM
(SELECT TOP 1 OrderDate, COUNT(OrderID) AS Orderqty
FROM Orders
GROUP BY OrderDate
ORDER BY Orderqty DESC) AS K1


--Wykładowca rozwiązanie
select day(OrderDate), count(orderid)
from Orders
group by day(OrderDate)
order by 2 desc
--dzien tygodnia
select  Datename(dw,OrderDate), count(orderid)
from Orders
group by Datename(dw,OrderDate)
order by 2 desc
--data
select top 1 with ties OrderDate, count(orderid)
from Orders
group by OrderDate
order by 2 desc
select dzien, ilosc
from (select distinct day(orderdate) dzien,
        (select count(orderid) 
        from orders o1
        where day(o1.orderdate)=day(o2.OrderDate)) ilosc
from Orders o2) wynik
where wynik.ilosc = (select max(ta.ilosc) 
            FROM (select (select count(orderid) 
            from orders o1 
            where day(o1.OrderDate)=day(o2.OrderDate)) ilosc
        from Orders o2) ta)