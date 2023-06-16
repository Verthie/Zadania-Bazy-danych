SELECT empid, lastname
FROM HR.Employees
WHERE LEFT(lastname,1) = LOWER(LEFT(lastname,1)) COLLATE Latin1_General_CS_AS
--WHERE ASCII(LEFT(lastname,1)) between 97 and 122

--Latin1_General - represents the sort rule, CI means Case Insensitive, CS means Case Sensitive, AS means Accent Sensitive