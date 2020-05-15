CREATE DATABASE GuestHousesBJM0412;
USE GuestHousesBJM0412;

drop table rate;

CREATE TABLE calendar(
i DATE PRIMARY KEY
);

CREATE TABLE guest(
id INT PRIMARY KEY,
first_name VARCHAR(50),
last_name VARCHAR(50),
address VARCHAR(50) 
);

CREATE TABLE room_type(
id VARCHAR(6) PRIMARY KEY,
description VARCHAR(100)
);

CREATE TABLE room(
id INT PRIMARY KEY,
room_type VARCHAR(6),
max_occupancy INT,
FOREIGN KEY(room_type) REFERENCES room_type(id)
);

CREATE TABLE rate(
room_type VARCHAR(6),
occupancy INT,
amount DECIMAL(10, 2),
PRIMARY KEY (room_type, occupancy)
);

CREATE TABLE booking(
booking_id INT PRIMARY KEY,
booking_date DATE,
room_no INT,
guest_id INT,
occupants INT,
room_type_requested VARCHAR(6),
nights INT,
arrival_time VARCHAR(5),
FOREIGN KEY (room_no) REFERENCES room(id),
FOREIGN KEY (guest_id) REFERENCES guest(id),
FOREIGN KEY (room_type_requested, occupants) REFERENCES rate([room_type], [occupancy])
);

CREATE TABLE extra(
extra_id INT PRIMARY KEY,
booking_id INT,
description VARCHAR(50),
amount DECIMAL(10, 2),
FOREIGN KEY(booking_id) REFERENCES booking(booking_id)
);


ALTER TABLE [dbo].[rate]
ADD FOREIGN KEY([room_type])
REFERENCES [dbo].[room_type]([id]);

ALTER TABLE booking
ADD FOREIGN KEY(room_type_requested)
REFERENCES [dbo].[room_type]([id]);


