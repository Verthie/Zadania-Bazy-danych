SELECT CONCAT(LOWER(SUBSTRING(FirstName, 1, 1)), LOWER(SUBSTRING(LastName, 1,8)))
FROM Employees

--pierwsza litera imienia, inicjał środkowy(????), pierwsze osiem znaków nazwiska

SELECT*
FROM Employees