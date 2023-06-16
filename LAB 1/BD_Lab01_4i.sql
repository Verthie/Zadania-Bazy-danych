SELECT City, COUNT(City) AS NumberOfLiving
FROM Employees
GROUP BY City
HAVING COUNT(City) > 1