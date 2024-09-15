-- Cleansed Fact Internet Sales Table --
SELECT 
  [ProductKey], 
  [OrderDateKey], 
  [DueDateKey], 
  [CustomerKey], 
  --[PromotionKey], 
  --[CurrencyKey], 
  --[SalesTerritoryKey], 
  --[SalesOrderNumber], 
  --[SalesOrderLineNumber], 
  --[RevisionNumber], 
  --[OrderQuantity], 
  --[UnitPrice], 
  --[ExtendedAmount], 
  --[UnitPriceDiscountPct], 
  --[DiscountAmount], 
  --[ProductStandardCost], 
  --[TotalProductCost], 
  [SalesAmount] 
  --[TaxAmt], 
  --[Freight], 
  --[CarrierTrackingNumber], 
  --[CustomerPONumber], 
  --[OrderDate], 
  --[DueDate], 
  --[ShipDate],  -- Commented out [ShipDate] 
FROM 
  [dbo].[FactInternetSales]
WHERE 
  LEFT(OrderDateKey, 4) >= YEAR(GETDATE()) - 2 --Ensures that we only bring 2 years of data as requested
ORDER BY 
  OrderDateKey ASC;
