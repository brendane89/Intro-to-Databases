USE GuestHousesBJM0412;

/* Data Testing*/

/* Testing Primary Keys*/
/* booking.csv has 349 lines. 348 exclusing the first line and 347 excluding the last blank line. the statement below shows 347 entries */
SELECT [booking_id] FROM [dbo].[booking];

/* excluding the first and last lines from the csv, calender.csv has 1,000 entries as does the select statement below */
SELECT [i] FROM [dbo].[calendar];

/*the csv does not keep each entry on a new line so we cant compare*/
SELECT [extra_id] FROM [dbo].[extra];

/*guest has 651 lines in the csv file. so remove the first and last to get 649 which is the same shown from the query below */
SELECT [id] FROM [dbo].[guest];

/*csv indicates 8 rows as does this query. due to the low number of entries it is easy to see that the comp key is 
of a variable and an int*/
SELECT concat_WS('-',[room_type], [occupancy]) as  compKey FROM [dbo].[rate];

/*csv indicates 30 entries as does this query*/
SELECT [id] FROM [dbo].[room];

/* csv has 4 entries as does this query
its also pretty easy to see that they are all correct and in context*/
SELECT [id] FROM [dbo].[room_type];
