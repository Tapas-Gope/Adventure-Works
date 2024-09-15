-- Cleansed DimCustomer Table --
SELECT 
  c.CustomerKey AS CustomerKey, 
  --[GeographyKey], 
  --[CustomerAlternateKey], 
  --[Title], 
  c.firstname AS [FirstName], 
  --[MiddleName], 
  c.lastname AS [LastName], 
  c.firstname + ' ' + c.lastname AS [Full Name], 
  --[NameStyle], 
  --[BirthDate], 
  --[MaritalStatus], 
  --[Suffix], 
  CASE c.gender WHEN 'M' THEN 'MALE' WHEN 'F' THEN 'FEMALE' END AS Gender, 
  --[EmailAddress], 
  --[YearlyIncome], 
  --[TotalChildren], 
  --[NumberChildrenAtHome], 
  --[EnglishEducation], 
  --[SpanishEducation], 
  --[FrenchEducation], 
  --[EnglishOccupation], 
  --[SpanishOccupation], 
  --[FrenchOccupation], 
  --[HouseOwnerFlag], 
  --[NumberCarsOwned], 
  --[AddressLine1], 
  --[AddressLine2], 
  --[Phone], 
  c.datefirstpurchase AS [Date First Purchase], 
  --[CommuteDistance]
  g.city as [Customer City] -- Joined in Customer City from Geography tool
FROM 
  dbo.dimcustomer AS c 
  LEFT JOIN dbo.dimgeography AS g ON g.geographykey = c.geographykey 
ORDER BY 
  CustomerKey ASC
