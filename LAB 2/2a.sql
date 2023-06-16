SELECT empid, firstname, lastname, n
FROM HR.Employees, dbo.Nums
WHERE n<6
ORDER BY n;