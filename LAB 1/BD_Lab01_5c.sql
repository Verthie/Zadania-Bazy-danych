SELECT empid, firstname, lastname
FROM HR.Employees
WHERE (LEN(lastname) - LEN(REPLACE(lastname,'E',''))) > 1