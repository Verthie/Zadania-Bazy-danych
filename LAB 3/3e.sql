SELECT country, region, city
FROM 
(
SELECT 1 AS theorder, country, region, city
FROM HR.Employees
UNION ALL
SELECT 2, country, region, city
FROM Production.Suppliers
) AS D
ORDER BY theorder, country, region, city;