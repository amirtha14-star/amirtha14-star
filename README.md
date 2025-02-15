# Hotel Management SQL Database

## Project Overview
This project contains SQL scripts for a Hotel Management System. The database includes tables for guests, rooms, bookings, and payments, along with sample data and queries to manage hotel operations.

## Database Schema
The database consists of the following tables:

1. **Guests** - Stores guest information such as name, email, phone number, and address.
2. **Rooms** - Maintains details of hotel rooms, including room number, type, and availability status.
3. **Bookings** - Tracks guest reservations, linking them to rooms and check-in/check-out dates.
4. **Payments** - Records payments made for bookings, including amounts and transaction dates.

## SQL Scripts
The project includes the following SQL scripts:

### 1. Database and Table Creation
- Creates the `HotelManagement` database.
- Defines tables for guests, rooms, bookings, and payments with appropriate relationships.

### 2. Data Insertion
- Inserts sample data into the tables for testing and demonstration.

### 3. Queries
- Retrieves all guests, rooms, bookings, and payments.
- Checks room availability.
- Fetches guest details based on phone number and address.
- Lists booked rooms.
- Retrieves all payment transactions along with guest and booking details.
- Updates a booking's check-out date.

### 4. Views
- `GuestDetails`: Combines guest details into a structured format.
- `RoomDetails`: Displays room details including availability status.

### 5. Stored Procedures
- `book_gues()`: Retrieves all bookings and guests.
- `pay_room(a, b)`: Fetches payment details based on payment ID and room number.
- `GetAllBookings()`: Retrieves booking details, including guest and room information.

## How to Use
1. Run the `CREATE DATABASE HotelManagement;` command.
2. Execute the table creation scripts.
3. Insert sample data using the provided SQL statements.
4. Use the queries and stored procedures to interact with the database.

## Running the Queries
- Use MySQL or any compatible database management tool.
- Execute each script sequentially.
- Call stored procedures using `CALL procedure_name();`.

## Contributing
Feel free to fork the repository, make improvements, and submit pull requests. Contributions are welcome!

## License
This project is open-source and free to use.

