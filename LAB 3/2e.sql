WITH CTE --WITH [nazwa nowo utworzonej tablicy]
AS
(
SELECT orderid, orderdate, custid, empid, ROW_NUMBER() OVER(ORDER BY orderid, orderdate) AS rownum
FROM Sales.Orders
)
SELECT *
FROM CTE
WHERE rownum>10 AND rownum<21