--Cleansed FactInternetSales Table

SELECT 
	ProductKey,
	OrderDateKey,
	CustomerKey,
	SalesOrderNumber,
	OrderQuantity,
	SalesAmount,
	CONVERT (DATE, OrderDate) AS OrderDate,
	CONVERT (DATE, DueDate) AS DueDate,
	CONVERT (DATE, ShipDate) AS ShipDate
FROM AdventureWorksDW2014.dbo.FactInternetSales
WHERE OrderDate >= YEAR(GETDATE())-2
ORDER BY OrderDateKey