Use [IranHotel]
Go
CREATE TABLE Rooms(
	RoomID int IDENTITY(1,1) Not NULL,
	Room_Number char(3) NOT NULL,
	BedType varchar(15) NOT NULL,
	Rate smallmoney
);

INSERT INTO Rooms(Room_Number,BedType,Rate) VALUES
	('101','King',110),
	('102','Queen',100),
	('201','King',120),
	('202','King',120),
	('203','Two Doubles',90);