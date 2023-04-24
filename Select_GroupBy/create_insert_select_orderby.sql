use [IranHotelSQLExample]
GO
create table Rooms(
	[ROOMID] int identity(1,1) not null,
	[RoomNumber] char(3) not null,
	BedType varchar(15) not null,
	Rate smallmoney 
);

go

insert into dbo.Rooms (RoomNumber, BedType, Rate) 
values ('12','one',10000),
('123','twodoubles',20000),
('231','king',30000),
('432','queen',20000),
('120','king',30000),
('231','queen',50000),
('543','king',50000)


go

select ROOMID, RoomNumber, BedType, Rate 
from dbo.Rooms 
go


select count(*) 
from dbo.Rooms where BedType='king'
go


select GusestID,FirstName,LastName from dbo.Guests
order by LastName ASC, FirstName DESC
go

delete from dbo.RoomReservations where GusetID=1002
delete from dbo.Guests where GusestID=1002

go


select * from RoomReservations

update RoomReservations 
set CheckInDate='2019', ChechOutDate = '2019', RoomNumber=123
where ReservationID=5
go


select * from Guests
select * from RoomReservations
select * from Rooms
go

select Guests.GusestID,Guests.FirstName, Guests.LastName, 
RoomReservations.CheckInDate,RoomReservations.RoomNumber
,Rooms.BedType, Rooms.Rate

from Guests inner join RoomReservations on Guests.GusestID = RoomReservations.GusetID
inner join Rooms on RoomReservations.RoomNumber = Rooms.RoomNumber
go




select  Guests.GusestID, Guests.FirstName, Guests.LastName, 
RoomReservations.CheckInDate,RoomReservations.RoomNumber
,Rooms.BedType, Rooms.Rate

from Guests left join RoomReservations ON Guests.GusestID = RoomReservations.GusetID
left join Rooms ON RoomReservations.RoomNumber = Rooms.RoomNumber


select  Guests.GusestID, Guests.FirstName, Guests.LastName, 
RoomReservations.CheckInDate,RoomReservations.RoomNumber
,Rooms.BedType, Rooms.Rate

from Guests left join RoomReservations ON Guests.GusestID = RoomReservations.GusetID
left join Rooms ON RoomReservations.RoomNumber = Rooms.RoomNumber
go


truncate table Rooms
go

drop table if exists Rooms
go
