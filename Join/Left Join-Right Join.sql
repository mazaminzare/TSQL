Select Guests.FirstName,
		Guests.LastName,
		RoomReservation.CheckInDate,
		RoomReservation.CheckOutDate,
		RoomReservation.RoomNumber,
		Rooms.BedType,
		Rooms.Rate
		From Guests Left Join RoomReservation ON Guests.GuestId = RoomReservation.GusetID
		Left Join Rooms ON RoomReservation.RoomNumber = Rooms.Room_Number


Select Guests.FirstName,
		Guests.LastName,
		RoomReservation.CheckInDate,
		RoomReservation.CheckOutDate,
		RoomReservation.RoomNumber,
		Rooms.BedType,
		Rooms.Rate
		From Guests Right Join RoomReservation ON Guests.GuestId = RoomReservation.GusetID
		Right Join Rooms ON RoomReservation.RoomNumber = Rooms.Room_Number