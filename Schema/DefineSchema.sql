use [IranHotelSQLExample]
go

create schema HumanResources

Alter SCHEMA HumanResources TRANSFER dbo.Employee

GRANT INSERT ON SCHEMA :: HumanResources TO ali