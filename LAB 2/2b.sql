SELECT empid, dateadd(day, n-1, cast('20160612' AS DATE)) AS dt
FROM HR.Employees CROSS JOIN Nums
WHERE n<=DATEDIFF(day, '20160612', '20160616') + 1
ORDER BY 1, 2

--cast() zmienia typ danych, w tym przpadku na date => cast('... AS DATE')