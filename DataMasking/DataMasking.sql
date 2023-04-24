use [IranHotelSQLExample]
go

select * from HumanResources.Employee
go 

Alter Table HumanResources.Employee
Alter Column Email Add Masked With (function = 'email()')
go


Alter Table HumanResources.Employee
Alter Column Email Drop Masked