SELECT empid, firstname, lastname, titleofcourtesy, IIF(titleofcourtesy='Mr.', 'Male', IIF(titleofcourtesy='Mrs.' OR titleofcourtesy='Ms.', 'Female', 'Unknown')) as gender
FROM HR.Employees
