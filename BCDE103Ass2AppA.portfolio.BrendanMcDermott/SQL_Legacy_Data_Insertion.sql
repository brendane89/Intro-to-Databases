USE GuestHousesBJM0412;

BULK INSERT [dbo].[calendar]
FROM 'C:\Users\User\Documents\2. education\BICT year 1 sem 2\2. Database design\BCDE103Ass2.portfolio.BrendanMcDermott\BCDE103Ass2AppA.portfolio.BrendanMcDermott\calendar.csv'
WITH
(   
FIELDTERMINATOR ='\n ',
ROWTERMINATOR ='\n',
fIRSTROW = 2   
 );

 BULK INSERT [dbo].[guest]
FROM 'C:\Users\User\Documents\2. education\BICT year 1 sem 2\2. Database design\BCDE103Ass2.portfolio.BrendanMcDermott\BCDE103Ass2AppA.portfolio.BrendanMcDermott\guest.csv'
WITH
(   
FIELDTERMINATOR =',',
ROWTERMINATOR ='\n',
fIRSTROW = 2   
 );

  BULK INSERT [dbo].[room_type]
FROM 'C:\Users\User\Documents\2. education\BICT year 1 sem 2\2. Database design\BCDE103Ass2.portfolio.BrendanMcDermott\BCDE103Ass2AppA.portfolio.BrendanMcDermott\room_type.csv'
WITH
(   
FIELDTERMINATOR =',',
ROWTERMINATOR ='\n',
fIRSTROW = 2   
 );

   BULK INSERT [dbo].[room]
FROM 'C:\Users\User\Documents\2. education\BICT year 1 sem 2\2. Database design\BCDE103Ass2.portfolio.BrendanMcDermott\BCDE103Ass2AppA.portfolio.BrendanMcDermott\room.csv'
WITH
(   
FIELDTERMINATOR =',',
ROWTERMINATOR ='\n',
fIRSTROW = 2   
 );

   BULK INSERT [dbo].[rate]
FROM 'C:\Users\User\Documents\2. education\BICT year 1 sem 2\2. Database design\BCDE103Ass2.portfolio.BrendanMcDermott\BCDE103Ass2AppA.portfolio.BrendanMcDermott\rate.csv'
WITH
(   
FIELDTERMINATOR =',',
ROWTERMINATOR ='\n',
fIRSTROW = 2   
 );

   BULK INSERT [dbo].[booking]
FROM 'C:\Users\User\Documents\2. education\BICT year 1 sem 2\2. Database design\BCDE103Ass2.portfolio.BrendanMcDermott\BCDE103Ass2AppA.portfolio.BrendanMcDermott\booking.csv'
WITH
(   
FIELDTERMINATOR =',',
ROWTERMINATOR ='\n',
fIRSTROW = 2   
 );

   BULK INSERT [dbo].[extra]
FROM 'C:\Users\User\Documents\2. education\BICT year 1 sem 2\2. Database design\BCDE103Ass2.portfolio.BrendanMcDermott\BCDE103Ass2AppA.portfolio.BrendanMcDermott\extra.csv'
WITH
(   
FIELDTERMINATOR =',',
ROWTERMINATOR ='),(',
fIRSTROW = 1  
 );

SELECT * FROM [dbo].[booking];
SELECT * FROM [dbo].[calendar];
SELECT * FROM [dbo].[extra];
SELECT * FROM [dbo].[guest];
SELECT * FROM [dbo].[rate];
SELECT * FROM [dbo].[room];
SELECT * FROM [dbo].[room_type];

