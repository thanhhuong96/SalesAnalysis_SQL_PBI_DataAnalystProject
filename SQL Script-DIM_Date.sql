-- Cleansed DIM_Date Table

SELECT 
	DateKey,
	FullDateAlternateKey AS Date,
	EnglishDayNameOfWeek AS Day,
	EnglishMonthName AS Month,
	MonthNumberOfYear AS MonthNo,
	CalendarQuarter AS Quarter,
	CalendarYear AS Year
FROM AdventureWorksDW2014.dbo.DimDate
WHERE CalendarYear >=2019

UPDATE AdventureWorksDW2014.dbo.DimDate
SET EnglishMonthName = LEFT(EnglishMonthName, 3)