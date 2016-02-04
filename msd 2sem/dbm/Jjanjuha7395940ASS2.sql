--Jjanjuha7395940.sql
--Jaspreet janjuha

--1.
PRINT '*** QUESTION1 List the number of characters in firstName aliased as ‘First Name Length’ for all persons.   Show each column length only once. 
         Sort the results by number of characters in descending order.***'
PRINT ''

 SELECT DISTINCT LEN ( firstname) AS [First Name Length]
 FROM Person
 ORDER BY LEN (firstname) DESC

--2.
PRINT '*** QUESTION2 List the firstName, the first letter of firstName aliased as ‘First Initial’, and the first letter of firstName in lower case aliased as ‘Lower First Initial’ 
           for all persons whose lastName starts with ‘P’. Sort the results by firstName in ascending order. Use LEFT() throughout.  ***'
PRINT ''

		    SELECT firstname ,LEFT(firstname,1)  AS [First Initial] ,LOWER(LEFT(firstname,1)) AS [Lower First Initial]
		    FROM Person
			WHERE LEFT(lastName,1) ='P'
			ORDER BY firstname ASC

--3.
PRINT '*** QUESTION3 List the lastName, the first seven letters of lastName aliased as ‘First Seven’, and the first seven letters of lastName in lower case aliased as ‘Lower First Seven’
           for all persons whose lastName starts with ‘P’. Sort the results  by lastName in ascending order.  Use SUBSTRING() throughout. ***'
PRINT ''
 	      SELECT lastname, SUBSTRING(lastname,1,7) AS [First Seven],LOWER(SUBSTRING(lastname,1,7)) AS [Lower First Seven]
		  FROM Person
		  WHERE SUBSTRING(lastname,1,1) ='P'
		  ORDER BY lastname ASC

--4.
PRINT '*** QUESTION 4 List user id’s for all persons whose last name starts with ‘P’.The user id consists of the first letter of the first name and the first seven letters of the last name, 
           all in lower case.  Alias the user id ‘User Id’, and sort the results in ascending ‘User ID’ order.  Use either LEFT() or SUBSTRING() as you wish.***'
PRINT ''

           SELECT  LOWER(LEFT(firstname,1)) + LOWER(LEFT(lastname,7))  AS [User Id]
		   FROM Person 
		   WHERE LOWER(LEFT(lastname,1)) ='P'
		   ORDER BY LOWER(LEFT(firstname,1)) + LOWER(LEFT(lastname,7)) ASC

--5.
PRINT '*** QUESTION 5 List number aliased as ‘Course Code’ and name aliased as ‘Course Name’ for all courses that have the word ‘Database’ in their name.  Do not use LIKE.***'
PRINT ''
          SELECT number AS [Course Code] ,name AS [Course Name]
		  FROM Course
		  WHERE CHARINDEX('Database',name) > 0

--6.
PRINT '*** QUESTION 6 What is the date today, 30 days from today, 60 days from today, 90 days from today, and 120 days from today?  
       Alias the columns 'Today', '30 Days', '60 Days', '90 Days' and '120 Days' respectively.  Display all dates in YYYY.MM.DD format. ***'
PRINT '' SELECT 
       CAST  (GETDATE() AS DATE ) AS [Today],
		CAST  (GETDATE() +30 AS DATE) AS [30 Days],
		CAST( GETDATE() +60 AS DATE) AS [60 Days],
		CAST(GETDATE() +90 AS DATE) AS[90 Days],
		CAST (GETDATE() + 120 AS DATE ) AS [120 Days])
		
       

	    