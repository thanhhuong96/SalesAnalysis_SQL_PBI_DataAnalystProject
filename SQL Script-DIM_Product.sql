-- Cleansed DIM_Product Table

SELECT 
	ProductKey,
	ProductAlternateKey AS ProductItemCode,
	EnglishProductName AS ProductName,
	ps.EnglishProductSubcategoryName AS SubcategoryName,
	pc.EnglishProductCategoryName AS CategoryName,
	Color,
	ReorderPoint,
	ISNULL(Size,'Freesize') AS Size,
	ProductLine,
	ModelName,
	EnglishDescription,
	ISNULL(Status, 'Outdated') AS Status	  
FROM AdventureWorksDW2014.dbo.DimProduct AS p
LEFT JOIN AdventureWorksDW2014.dbo.DimProductSubcategory AS ps
	ON p.ProductSubcategoryKey = ps.ProductSubcategoryKey
LEFT JOIN AdventureWorksDW2014.dbo.DimProductCategory AS pc
	ON ps.ProductCategoryKey = pc.ProductCategoryKey

