
use [IranHotelSQLExample]
go

create nonclustered index IX_Guests_LastName 
on dbo.Guests (LastName ASC)