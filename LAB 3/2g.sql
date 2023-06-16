USE w65539ex;
DROP VIEW IF EXISTS Sales.VEmpOrders;
GO
CREATE VIEW Sales.VEmpOrders
AS

SELECT empid, YEAR(orderdate) AS orderyear, SUM(qty) AS qty
FROM Sales.Orders AS O
INNER JOIN Sales.OrderDetails AS OD
ON O.orderid=OD.orderid
GROUP BY empid, YEAR(orderdate);
GO