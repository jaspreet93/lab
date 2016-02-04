--Jjanjuha7395940.sql
--Assignment 2
--Jaspreet janjuha

--1.
PRINT '*** QUESTION1 List the number of characters in firstName aliased as ‘First Name LengthEfor all persons.   Show each column length only once. 
         Sort the results by number of characters in descending order.***'
PRINT ''

 SELECT DISTINCT LEN ( firstname) AS [First Name Length]
 FROM Person
 ORDER BY LEN (firstname) DESC

--2.
PRINT '*** QUESTION2 List the firstName, the first letter of firstName aliased as ‘First InitialE and the first letter of firstName in lower case aliased as ‘Lower First InitialE
           for all persons whose lastName starts with ‘PE Sort the results by firstName in ascending order. Use LEFT() throughout.  ***'
PRINT ''

		    SELECT firstname ,LEFT(firstname,1)  AS [First Initial] ,LOWER(LEFT(firstname,1)) AS [Lower First Initial]
		    FROM Person
			WHERE LEFT(lastName,1) ='P'
			ORDER BY firstname ASC

--3.
PRINT '*** QUESTION3 List the lastName, the first seven letters of lastName aliased as ‘First SevenE and the first seven letters of lastName in lower case aliased as ‘Lower First SevenE
           for all persons whose lastName starts with ‘PE Sort the results  by lastName in ascending order.  Use SUBSTRING() throughout. ***'
PRINT ''
 	      SELECT lastname, SUBSTRING(lastname,1,7) AS [First Seven],LOWER(SUBSTRING(lastname,1,7)) AS [Lower First Seven]
		  FROM Person
		  WHERE SUBSTRING(lastname,1,1) ='P'
		  ORDER BY lastname ASC

--4.
PRINT '*** QUESTION 4 List user id’s for all persons whose last name starts with ‘PEThe user id consists of the first letter of the first name and the first seven letters of the last name, 
           all in lower case.  Alias the user id ‘User IdE and sort the results in ascending ‘User IDEorder.  Use either LEFT() or SUBSTRING() as you wish.***'
PRINT ''

           SELECT  LOWER(LEFT(firstname,1)) + LOWER(LEFT(lastname,7))  AS [User Id]
		   FROM Person 
		   WHERE LOWER(LEFT(lastname,1)) ='P'
		   ORDER BY LOWER(LEFT(firstname,1)) + LOWER(LEFT(lastname,7)) ASC

--5.
PRINT '*** QUESTION 5 List number aliased as ‘Course CodeEand name aliased as ‘Course NameEfor all courses that have the word ‘DatabaseEin their name.  Do not use LIKE.***'
PRINT ''
          SELECT number AS [Course Code] ,name AS [Course Name]
		  FROM Course
		  WHERE CHARINDEX('Database',name) > 0

--6.
PRINT '*** QUESTION 6 What is the date today, 30 days from today, 60 days from today, 90 days from today, and 120 days from today?  
           Alias the columns Today , 30 Days, 60 Days, 90 Days and 120 Days respectively.  Display all dates in YYYY.MM.DD format. ***'
PRINT '' 

          SELECT
          CONVERT(VARCHAR(12), GETDATE(),102) AS [Today],
          CONVERT(VARCHAR(12), DATEADD(DAY, 30, GETDATE()),102) AS [30 Days],
          CONVERT(VARCHAR(12), DATEADD(DAY, 60, GETDATE()),102) AS [60 Days],
          CONVERT(VARCHAR(12), DATEADD(DAY, 90, GETDATE()),102) AS [90 Days],
          CONVERT(VARCHAR(12), DATEADD(DAY, 120, GETDATE()),102) AS [120 Days]
       
--7.
PRINT  '*** QUESTION 7 List number  and birthDate for all employees  sorted in ascending birthDate order  
            Use a join to connect employee and person table data. 
	        a) Use YEAR(),  MONTH() and DAY().  
            b) Use DATEPART().***'
PRINT ''
		
        SELECT  'Employee Number: ' + e.number + ' Year: ' + CONVERT(varchar(4),YEAR(p.birthdate)) +  ' Month: ' + Convert(varchar(2), MONTH(p.birthdate)) +  ' Day: ' + Convert(varchar(2),Day(p.birthdate)) 
		FROM Person p INNER JOIN Employee e 
		ON p.number = e.number
	    ORDER BY birthdate ASC

	    SELECT  'Employee Number: ' + e.number + ' Year: ' + CONVERT(varchar(4),DATEPART(YYYY, p.birthdate)) +  ' Month: ' + Convert(varchar(2),DATEPART(MM, p.birthdate)) +  ' Day: ' + Convert(varchar(2),DATEPART(DD, p.birthdate)) 
		FROM Person p INNER JOIN Employee e 
		ON p.number = e.number
	    ORDER BY birthdate ASC
		