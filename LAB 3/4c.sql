SELECT val, RANK() OVER(ORDER BY val) AS rownum
FROM Sales.OrderValues
GROUP BY val

/*
SELECT val, ROW_NUMBER() OVER(ORDER BY val) AS rownum
FROM Sales.OrderValues
GROUP BY val
*/