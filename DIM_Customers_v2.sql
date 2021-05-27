-- Cleansed DIM_Customers Table
SELECT 
	c.customerkey AS CustomerKey,
   
    c.firstname AS [First Name],
    c.lastname AS [Last Name],
	c.firstname + ' ' + lastname AS [Full Name],
      
    CASE c.gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender,
      
     c.datefirstpurchase AS DateFirstPurchase,
     
	 g.city AS [Customer City]		--Joined in Customer City from Geography Table
FROM 
	[AdventureWorksDW2019].[dbo].[DimCustomer] as c
	LEFT JOIN [AdventureWorksDW2019].[dbo].[DimGeography] AS g ON g.geographykey = c.geographykey
ORDER BY
	CustomerKey ASC		--Ordered list by CustomerKey