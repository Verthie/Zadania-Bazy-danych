SELECT empid,
COUNT(CASE WHEN orderyear = 2014 THEN orderyear END) AS cnt2014,
COUNT(CASE WHEN orderyear = 2015 THEN orderyear END) AS cnt2015,
COUNT(CASE WHEN orderyear = 2016 THEN orderyear END) AS cnt2016
FROM (SELECT empid, YEAR(orderdate) AS orderyear
FROM dbo.Orders) AS D
GROUP BY empid