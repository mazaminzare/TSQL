use WideWorldImporters
Go


--create Procedure WareHouse.uspLowInventory
--@MaximumRow int
--AS 

--select top(@MaximumRow) Warehouse.StockItems.StockItemID AS ID,
--Warehouse.StockItems.StockItemName AS 'Item Name',
--Warehouse.StockItemHoldings.QuantityOnHand AS 'On Hand',
--Warehouse.StockItemHoldings.ReorderLevel AS 'ReOrder Level'
--From Warehouse.StockItems Inner Join Warehouse.StockItemHoldings 
--ON Warehouse.StockItems.StockItemID = Warehouse.StockItemHoldings.StockItemID
--order by 'On Hand'
--Go

Execute WareHouse.uspLowInventory 20
