--cleansed DimDate tables
SELECT 
  [DateKey], 
  [FullDateAlternateKey] as date, 
  --[DayNumberOfWeek],
  [EnglishDayNameOfWeek] as day, 
  --[SpanishDayNameOfWeek]
  --,[FrenchDayNameOfWeek]
  --,[DayNumberOfMonth]
  -- ,[DayNumberOfYear]
  [WeekNumberOfYear] as WeekNO, 
  [EnglishMonthName] as month, 
  LEFT([EnglishMonthName], 3) as MonthShort, 
  --[SpanishMonthName]
  -- ,[FrenchMonthName]
  [MonthNumberOfYear] as MonthNo, 
  [CalendarQuarter] as quarter, 
  [CalendarYear] as year --[CalendarSemester]
  --[FiscalQuarter]
  --,[FiscalYear]
  --,[FiscalSemester]
FROM 
  [AdventureWorksDW2019].[dbo].[DimDate] 
where 
  [CalendarYear] >= 2019
