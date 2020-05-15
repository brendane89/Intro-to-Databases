USE GuestHousesBJM0412;
/* Queries */

/*The total number of bookings*/
SELECT COUNT([booking_id]) AS Total_number_of_bookings FROM [dbo].[booking];


/*The total number of guests booked*/
SELECT SUM([occupants]) AS Total_number_of_guests FROM [dbo].[booking];


/*List of guests by room type*/
SELECT CONCAT_WS(' ', [first_name], [last_name]) AS guest, [room_type_requested] AS room_type FROM [dbo].[booking]
INNER JOIN [dbo].[guest]
ON [guest_id] = [id] 
ORDER BY [room_type_requested]



