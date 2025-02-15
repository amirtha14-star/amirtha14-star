 -- Create Database
 CREATE DATABASE HotelManagement;
 
 -- To Active Database
USE HotelManagement;

-- Create Guests Table
create table Guests(
Guests_id int primary key,
First_name varchar(50),
Last_name varchar(50),
Email varchar(50),
Phoneno varchar(50),
Address varchar(50)
);

 -- Create Rooms Table
create table Rooms(
Rooms_id int primary key,
Rooms_number varchar(20),
Rooms_type varchar(30),
status varchar (20)
);


-- Create Bookings Table
CREATE TABLE Bookings (
    booking_id INT PRIMARY KEY AUTO_INCREMENT,
    guests_id INT,
    room_id INT,
    check_in_date DATE,
    check_out_date DATE,
    FOREIGN KEY (guests_id) REFERENCES Guests (guests_id),
    FOREIGN KEY (room_id) REFERENCES Rooms(room_id)
);
 
 -- Create Payments Table
CREATE TABLE Payments (
    payment_id INT PRIMARY KEY AUTO_INCREMENT,
    booking_id INT,
    payment_date DATE,
    amount DECIMAL(10, 2),
    FOREIGN KEY (booking_id) REFERENCES Bookings(booking_id)
);
 
 -- To insert values
 
  insert into Guests (Guests_id, first_name, last_name, email, phoneno, address) 
  values (1, 'John', 'Doe', 'john.doe@example.com', '1234567890', '123 Main St, New York, USA'),
(2, 'Jane', 'Smith', 'jane.smith@example.com', '2345678901', '456 Elm St, Los Angeles, USA'),
(3, 'Robert', 'Johnson', 'robert.johnson@example.com', '3456789012', '789 Oak St, Chicago, USA'),
(4, 'Emily', 'Davis', 'emily.davis@example.com', '4567890123', '321 Pine St, Houston, USA'),
(5, 'Michael', 'Brown', 'michael.brown@example.com', '5678901234', '654 Maple St, Phoenix, USA'),
(6, 'Emma', 'Wilson', 'emma.wilson@example.com', '6789012345', '987 Birch St, Dallas, USA'),
(7, 'David', 'Martinez', 'david.martinez@example.com', '7890123456', '159 Cedar St, San Diego, USA'),
(8, 'Olivia', 'Anderson', 'olivia.anderson@example.com', '8901234567', '753 Palm St, San Francisco, USA'),
(9, 'James', 'Garcia', 'james.garcia@example.com', '9012345678', '852 Spruce St, Miami, USA'),
(10, 'Sophia', 'Taylor', 'sophia.taylor@example.com', '1239876543', '951 Ash St, Seattle, USA'),
(11, 'William', 'Thomas', 'william.thomas@example.com', '2348765432', '369 Poplar St, Boston, USA'),
(12, 'Ava', 'Hernandez', 'ava.hernandez@example.com', '3457654321', '258 Redwood St, Denver, USA'),
(13, 'Alexander', 'Moore', 'alexander.moore@example.com', '4566543210', '147 Fir St, Atlanta, USA'),
(14, 'Mia', 'Jackson', 'mia.jackson@example.com', '5675432109', '369 Cypress St, Las Vegas, USA'),
(15, 'Ethan', 'White', 'ethan.white@example.com', '6784321098', '951 Walnut St, Orlando, USA'),
(16, 'Charlotte', 'Harris', 'charlotte.harris@example.com', '7893210987', '753 Magnolia St, Austin, USA'),
(17, 'Daniel', 'Clark', 'daniel.clark@example.com', '8902109876', '852 Hickory St, Philadelphia, USA'),
(18, 'Amelia', 'Lewis', 'amelia.lewis@example.com', '9011098765', '123 Chestnut St, Washington, USA'),
(19, 'Matthew', 'Robinson', 'matthew.robinson@example.com', '1029876543', '456 Acacia St, Detroit, USA'),
(20, 'Harper', 'Walker', 'harper.walker@example.com', '2138765432', '789 Juniper St, San Antonio, USA');
 
   
Insert into Rooms (Room_id, Room_number, Room_type, status)
values (1, '101', 'Single', 'Available'),
(2, '102', 'Double', 'Booked'),
(3, '103', 'Suite', 'Available'),
(4, '104', 'Single', 'Under Maintenance'),
(5, '105', 'Double', 'Available'),
(6, '106', 'Suite', 'Booked'),
(7, '107', 'Single', 'Available'),
(8, '108', 'Double', 'Booked'),
(9, '109', 'Suite', 'Available'),
(10, '110', 'Single', 'Under Maintenance'),
(11, '111', 'Double', 'Available'),
(12, '112', 'Suite', 'Booked'),
(13, '113', 'Single', 'Available'),
(14, '114', 'Double', 'Booked'),
(15, '115', 'Suite', 'Available'),
(16, '116', 'Single', 'Under Maintenance'),
(17, '117', 'Double', 'Available'),
(18, '118', 'Suite', 'Booked'),
(19, '119', 'Single', 'Available'),
(20, '120', 'Double', 'Available');


INSERT INTO Bookings (booking_id, guests_id, room_id, check_in_date, check_out_date)
 VALUES (1, 1, 1, '2025-03-01', '2025-03-05'),
(2, 2, 2, '2025-03-02', '2025-03-06'),
(3, 3, 3, '2025-03-03', '2025-03-07'),
(4, 4, 4, '2025-03-04', '2025-03-08'),
(5, 5, 5, '2025-03-05', '2025-03-09'),
(6, 6, 6, '2025-03-06', '2025-03-10'),
(7, 7, 7, '2025-03-07', '2025-03-11'),
(8, 8, 8, '2025-03-08', '2025-03-12'),
(9, 9, 9, '2025-03-09', '2025-03-13'),
(10, 10, 10, '2025-03-10', '2025-03-14'),
(11, 11, 11, '2025-03-11', '2025-03-15'),
(12, 12, 12, '2025-03-12', '2025-03-16'),
(13, 13, 13, '2025-03-13', '2025-03-17'),
(14, 14, 14, '2025-03-14', '2025-03-18'),
(15, 15, 15, '2025-03-15', '2025-03-19'),
(16, 16, 16, '2025-03-16', '2025-03-20'),
(17, 17, 17, '2025-03-17', '2025-03-21'),
(18, 18, 18, '2025-03-18', '2025-03-22'),
(19, 19, 19, '2025-03-19', '2025-03-23'),
(20, 20, 20, '2025-03-20', '2025-03-24');


insert into Payments (payment_id, booking_id, payment_date, amount)
values  (1, 1, '2025-03-05', 500.00),
(2, 2, '2025-03-06', 600.00),
(3, 3, '2025-03-07', 700.00),
(4, 4, '2025-03-08', 800.00),
(5, 5, '2025-03-09', 900.00),
(6, 6, '2025-03-10', 1000.00),
(7, 7, '2025-03-11', 1100.00),
(8, 8, '2025-03-12', 1200.00),
(9, 9, '2025-03-13', 1300.00),
(10, 10, '2025-03-14', 1400.00),
(11, 11, '2025-03-15', 1500.00),
(12, 12, '2025-03-16', 1600.00),
(13, 13, '2025-03-17', 1700.00),
(14, 14, '2025-03-18', 1800.00),
(15, 15, '2025-03-19', 1900.00),
(16, 16, '2025-03-20', 2000.00),
(17, 17, '2025-03-21', 2100.00),
(18, 18, '2025-03-22', 2200.00),
(19, 19, '2025-03-23', 2300.00),
(20, 20, '2025-03-24', 2400.00);

-- select Statement

   SELECT * FROM Guests;
   SELECT * FROM Rooms;
   SELECT * FROM Bookings;
   SELECT * FROM Payments;

-- To Availability of the rooms

  SELECT * FROM Rooms where status = "available";

-- Retrive 	Guests Details

   SELECT * FROM Guests where Phoneno ='2348765432' AND Address = '369 Poplar St, Boston, USA';
    
--  Get All Payments with Guest and Booking Details

 SELECT 
    p.payment_id, 
    g.first_name, g.last_name, 
    r.room_number, r.room_type, 
    b.check_in_date, b.check_out_date, 
    p.payment_date, p.amount
FROM Payments p
JOIN Bookings b ON p.booking_id = b.booking_id
JOIN Guests g ON b.guests_id = g.guests_id
JOIN Rooms r ON b.room_id = r.room_id;

-- Listing all Booked Rooms

SELECT * FROM Rooms where status = " Booked";

-- Update Booking status
 
 UPDATE Bookings
 SET check_out_date = "2025-03-14" 
 where Booking_id =11;
 
-- Creating a View for Guests 
CREATE VIEW GuestDetails AS
SELECT 
    Guests_id, 
    CONCAT(First_name, ' ', Last_name) AS Full_Name, 
    Email, 
    Phoneno, 
    Address 
FROM Guests;

-- Creating a View for Rooms
 CREATE VIEW RoomDetails AS
SELECT 
    Room_id, 
    Room_number, 
    Room_type, 
    status 
FROM Rooms;

-- To View the Data

 SELECT * FROM GUESTDETAILS;
 SELECT* FROM ROOMDETAILS
 
-- Stored procedure

Delimiter //
 CREATE PROCEDURE book_gues()
 begin 
      select * from bookings;
      select * from guests;
 end //

-- Calling the procedure
 call book_gues();  -- without parameter
 
 
 -- Stored procedure 
   delimiter //
    CREATE PROCEDURE pay_room ( In a int, In b varchar(20))
    begin  
         select * from payments
         where payment_id = a;
         
         select * from rooms
         where room_number = b;
    end //
    
      delimiter ;
      set @payment_id = "6";
      set @room_number = "106";
      
-- Calling the procedure
      call pay_room (@payment_id, @room_number);  -- with parameter
      
 -- Stored procedure
 
 DELIMITER //

CREATE PROCEDURE GetAllBookings()
BEGIN
    SELECT 
        b.booking_id, 
        g.first_name, 
        g.last_name, 
        r.Room_number, 
        r.Room_type, 
        b.check_in_date, 
        b.check_out_date
    FROM Bookings b
    JOIN Guests g ON b.guests_id = g.Guests_id
    JOIN Rooms r ON b.room_id = r.Room_id;
END //

DELIMITER ;

-- Calling the Stored procedure

CALL GetAllBookings();


