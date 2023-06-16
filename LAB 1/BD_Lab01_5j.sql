SELECT custid, region
FROM Sales.Customers
ORDER BY (CASE WHEN region is NULL then 1 ELSE 0 END)