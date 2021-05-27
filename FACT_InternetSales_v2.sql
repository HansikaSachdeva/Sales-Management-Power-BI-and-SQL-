-- Cleansed FactInternetSales Table
SELECT  
	[ProductKey],
    [OrderDateKey],
    [DueDateKey],
    [ShipDateKey],
    [CustomerKey],
    [SalesOrderNumber],
    [SalesAmount]     
FROM 
	[AdventureWorksDW2019].[dbo].[FactInternetSales]
WHERE
	LEFT (OrderDateKey, 4) >= YEAR(GETDATE()) -2		--Taking the left of OrderDateKey(to get year), and the year of the current date(GETDATE()) to go back only 2 years
ORDER BY
	OrderDateKey ASC