use [WideWorldImporters]
go

--select SCHEMA_NAME(SCHEMA_ID) as SchemaName, name as Procedurename
--from sys.procedures
--go


Create procedure Warehouse.uspLowInventory
as

select Warehouse.StockItems.StockItemID AS ID,
Warehouse.StockItems.StockItemName AS 'Item Name',
Warehouse.StockItemHoldings.QuantityOnHand AS 'On Hand',
Warehouse.StockItemHoldings.ReorderLevel AS 'ReOrder Level'
From Warehouse.StockItems Inner Join Warehouse.StockItemHoldings 
ON Warehouse.StockItems.StockItemID = Warehouse.StockItemHoldings.StockItemID
order by 'On Hand'

go

Alter procedure Warehouse.uspLowInventory
as

select Warehouse.StockItems.StockItemID AS ID,
Warehouse.StockItems.StockItemName AS 'Item Name',
Warehouse.StockItemHoldings.QuantityOnHand AS 'On Hand',
Warehouse.StockItemHoldings.ReorderLevel AS 'ReOrder Level'
From Warehouse.StockItems Inner Join Warehouse.StockItemHoldings 
ON Warehouse.StockItems.StockItemID = Warehouse.StockItemHoldings.StockItemID
where ReorderLevel>QuantityOnHand
order by 'On Hand'

go

-- run store procedure
exec Warehouse.uspLowInventory
go
-- delete store procedure
drop procedure Warehouse.uspLowInventory
go



Alter procedure Warehouse.uspLowInventory
@NumberOfSelection int,
@Threshold int
as

select top(@NumberOfSelection) Warehouse.StockItems.StockItemID AS ID,
Warehouse.StockItems.StockItemName AS 'Item Name',
Warehouse.StockItemHoldings.QuantityOnHand AS 'On Hand',
Warehouse.StockItemHoldings.ReorderLevel AS 'ReOrder Level'
From Warehouse.StockItems Inner Join Warehouse.StockItemHoldings 
ON Warehouse.StockItems.StockItemID = Warehouse.StockItemHoldings.StockItemID
where ReorderLevel>@Threshold
order by 'On Hand'

go


exec Warehouse.uspLowInventory 5,200