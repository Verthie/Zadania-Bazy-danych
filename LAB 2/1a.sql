SELECT *
FROM

(SELECT CompanyName, City
FROM Customers
WHERE City = 'London') AS A

WHERE CompanyName Like '[A-C]%'