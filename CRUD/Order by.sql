
use [IranHotel]
GO

Select GuestId, FirstName, LastName
From Guests
order by LastName ASC, FirstName ASC


Select GuestId, FirstName, LastName
From Guests
order by LastName DESC, FirstName DESC


Select GuestId, FirstName, LastName, State
From Guests
where [State] = 'shiraz'
order by LastName DESC, FirstName DESC