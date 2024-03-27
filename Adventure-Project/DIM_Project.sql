--cleansed DIMCustomer Table
SELECT 
  c.[CustomerKey] as CustomerKey, 
  --,[GeographyKey]
  --,[CustomerAlternateKey]
  --,[Title]
  c.[FirstName] as FirstName, 
  --,[MiddleName]
  c.[LastName] as LastName, 
  --,[NameStyle]
  -- ,[BirthDate]
  -- ,[MaritalStatus]
  --,[Suffix]
  case c.Gender when 'm' then 'Male' when 'f' then 'Female' end as Gender, 
  --,[EmailAddress]
  --,[YearlyIncome]
  --,[TotalChildren]
  --,[NumberChildrenAtHome]
  --,[EnglishEducation]
  --,[SpanishEducation]
  --,[FrenchEducation]
  --,[EnglishOccupation]
  --,[SpanishOccupation]
  --,[FrenchOccupation]
  --,[HouseOwnerFlag]
  --,[NumberCarsOwned]
  --,[AddressLine1]
  --,[AddressLine2]
  --,[Phone]
  c.[DateFirstPurchase] as DateFirstPurchase, 
  --,[CommuteDistance]
  g.City as CustomerCity -- Joined in Customer City from Geography Table
FROM 
  [AdventureWorksDW2019]..[DimCustomer] c 
  left join [AdventureWorksDW2019]..[DimGeography] g on g.GeographyKey = c.GeographyKey 
order by 
  CustomerKey asc -- Ordered List by CustomerKey
