SELECT SUM(AAA.NumberOfLiving) AS 'Ilosc w tych samych'

FROM
(SELECT City, COUNT(City) AS NumberOfLiving
FROM Employees
GROUP BY City
HAVING COUNT(City) > 1) AS AAA