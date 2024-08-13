SELECT 
  p.[ProductKey], 
  p.[ProductAlternateKey],
  /*   ,[ProductSubcategoryKey]
       ,[WeightUnitMeasureCode]
       ,[SizeUnitMeasureCode]    */
  p.[EnglishProductName] AS [Product Name], 
  ps.EnglishProductSubcategoryName AS [Product Sub Category], 
  pc.EnglishProductCategoryName AS [Product Category], 
  /*   ,[SpanishProductName]
        ,[FrenchProductName]
        ,[StandardCost]
        ,[FinishedGoodsFlag]*/
  p.[Color] AS [Product Color],
  /*   ,[SafetyStockLevel]
        ,[ReorderPoint]
        ,[ListPrice]
        ,p.[Size] as [Product Size]
        ,[SizeRange]
        ,[Weight]
        ,[DaysToManufacture] */
  p.[ProductLine] AS [Product Line], 
  /*    ,[DealerPrice]
        ,[Class]
        ,[Style] */
  p.[ModelName] AS [Product Model Name], 
  --    ,[LargePhoto]
  p.[EnglishDescription] AS [Product Description], 
  /*   ,[FrenchDescription]
        ,[ChineseDescription]
        ,[ArabicDescription]
        ,[HebrewDescription]
        ,[ThaiDescription]
        ,[GermanDescription]
        ,[JapaneseDescription]
        ,[TurkishDescription]
        ,[StartDate]
        ,[EndDate] */
  ISNULL(p.[Status], 'Outdated') AS [Product Status] 
FROM 
  AdventureWorksDW2019.dbo.DimProduct AS p 
  LEFT JOIN AdventureWorksDW2019.dbo.DimProductSubcategory AS ps ON ps.ProductSubcategoryKey = p.ProductSubcategoryKey 
  LEFT JOIN AdventureWorksDW2019.dbo.DimProductCategory AS pc ON pc.ProductCategoryKey = ps.ProductCategoryKey 
ORDER BY 
  p.ProductKey ASC
