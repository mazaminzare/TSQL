--Select * From Guests
--select * from RoomReservation
--select * from Rooms



Select Guests.FirstName,
		Guests.LastName,
		RoomReservation.CheckInDate,
		RoomReservation.CheckOutDate,
		RoomReservation.RoomNumber,
		Rooms.BedType,
		Rooms.Rate
		From Guests Inner Join RoomReservation ON Guests.GuestId = RoomReservation.GusetID
		Inner Join Rooms ON RoomReservation.RoomNumber = Rooms.Room_Number