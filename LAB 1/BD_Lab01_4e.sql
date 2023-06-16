SELECT DISTINCT CompanyName, ShipCountry
FROM Customers AS C INNER JOIN Orders AS O
	ON C.CustomerID=O.CustomerID
WHERE ShipCountry = 'USA'