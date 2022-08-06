DROP DATABASE IF EXISTS Hotel;

CREATE DATABASE Hotel;

USE Hotel;

CREATE TABLE Guest (
	GuestID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(20) NOT NULL,
    LastName VARCHAR(20) NOT NULL,
    Address VARCHAR(100) NOT NULL,
    City VARCHAR(20) NOT NULL,
    State VARCHAR(10) NOT NULL,
    Zip INT NOT NULL,
    Phone VARCHAR(20) NOT NULL
);

CREATE TABLE Room (
	RoomID INT PRIMARY KEY,
    Type VARCHAR(10) NOT NULL,
    Amenities VARCHAR(50) NOT NULL,
    ADAAccessible BOOL NOT NULL DEFAULT 1,
    StandardOccupancy INT NOT NULL,
    MaximumOccupancy INT NOT NULL,
    BasePrice DECIMAL(12,2) NOT NULL,
    ExtraPerson INT NULL
);

CREATE TABLE Reservation (
	ReservationID INT PRIMARY KEY AUTO_INCREMENT,
    RoomID INT NOT NULL,
    GuestID INT NOT NULL,
    NoofAdults INT NOT NULL,
    NoofChildren INT NOT NULL,
    StartDate DATE NOT NULL,
    EndDate DATE NOT NULL,
    TotalRoomCost DECIMAL(12,2) NOT NULL,
    FOREIGN KEY fk_Reservation_Room (RoomID)
		REFERENCES Room(RoomID),
	FOREIGN KEY fk_Reservation_Guest (GuestID)
		REFERENCES Guest(GuestID)
);