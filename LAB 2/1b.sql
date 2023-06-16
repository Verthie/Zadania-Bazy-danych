SELECT OD.OrderID, AVG(OD.UnitPrice*OD.Quantity) AS SredniaWartosc
FROM [Order Details] AS OD 
INNER JOIN Orders AS O ON OD.OrderID=O.OrderID
INNER JOIN Employees AS E ON O.EmployeeID=E.EmployeeID
INNER JOIN EmployeeTerritories AS ET ON E.EmployeeID=ET.EmployeeID
INNER JOIN Territories AS T ON ET.TerritoryID=T.TerritoryID
INNER JOIN Region AS R ON T.RegionID=R.RegionID
WHERE MONTH(O.OrderDate) = 6 AND R.RegionDescription='Eastern'
--AND YEAR(O.OrderDate) = 1996
GROUP BY OD.OrderID
HAVING AVG(OD.UnitPrice*OD.Quantity)>
(SELECT AVG(OD1.UnitPrice*OD1.Quantity)
FROM [Order Details] AS OD1)