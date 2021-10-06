-- Cleansed DIM_Customer Table

SELECT 
	c.CustomerKey,
	c.FirstName,
    c.LastName,
	c.FirstName + ' ' + LastName AS FullName,
    c.BirthDate,
    CASE
		WHEN  c.Gender = 'M' THEN 'Male'
		WHEN  c.Gender = 'F' THEN 'Female'
		ELSE c.Gender
		END AS Gender,
    c.AddressLine1 AS Address,
    c.Phone,
    c.DateFirstPurchase,
	g.City AS CustomerCity
FROM AdventureWorksDW2014.dbo.DimCustomer AS c
LEFT JOIN AdventureWorksDW2014.dbo.DimGeography AS g
	ON c.GeographyKey = g.GeographyKey
ORDER BY FirstName
