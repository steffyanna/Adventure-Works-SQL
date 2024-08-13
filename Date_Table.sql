--Dim Date Table--
SELECT 
  [DateKey], 
  [FullDateAlternateKey] AS Date,
  -- ,[DayNumberOfWeek]
  [EnglishDayNameOfWeek] AS Day, 
  -- ,[SpanishDayNameOfWeek]
  -- ,[FrenchDayNameOfWeek]
  -- ,[DayNumberOfMonth]
  -- ,[DayNumberOfYear]
  [WeekNumberOfYear] AS Weeknbr, 
  [EnglishMonthName] AS Month, 
  LEFT([EnglishMonthName], 3) AS MonthShrt,
  --,[SpanishMonthName] 
  -- ,[FrenchMonthName]
  [MonthNumberOfYear] AS MonthNo, 
  [CalendarQuarter] As Qtr, 
  [CalendarYear] As Year 
  --,[CalendarSemester]
  --,[FiscalQuarter] 
  --,[FiscalYear]
  --,[FiscalSemester]
FROM 
  [AdventureWorksDW2019].[dbo].[DimDate] 
where 
  CalendarYear >= 2022 AND DateKey IS NOT NULL