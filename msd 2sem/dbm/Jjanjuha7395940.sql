--Jjanjuha7395940.sql
--Jaspreet Janjuha

--1.
PRINT '*** QUESTION1 List all data from the AcademicStatus table. ***'
PRINT ''

 SELECT * 
 FROM AcademicStatus

 --2.
PRINT '*** QUESTION2 List number and academicStatusCode for all students who have been discontinued.  List the results in descending order by number. ***'
PRINT ''

 SELECT number,academicStatusCode 
 FROM Student
 WHERE academicStatusCode ='D'
 ORDER BY number DESC

 --3.
PRINT '*** QUESTION3 List number and academicStatusCode for all students who have been discontinued or suspended.  List the results in ascending order by number.  Use OR.  Do not use NOT or !=. ***'
PRINT ''

 SELECT number,academicStatusCode 
 FROM Student
 WHERE academicStatusCode ='D' OR academicStatusCode ='S'
 ORDER BY number ASC

 --4.
PRINT '*** QUESTION4 List number and academicStatusCode for all students who have been discontinued or suspended.  List the results in ascending order by number.  Use NOT.   Do not use OR or !=. ***'
PRINT ''

  SELECT number, academicStatusCode 
  FROM Student 
  WHERE academicStatusCode 
  NOT IN('N')
  ORDER BY number ASC

 
 --5.
PRINT '*** QUESTION5 List number and academicStatusCode for all students who have been discontinued or suspended.  List the results in ascending order by number.  Use !=.   Do not use OR or NOT.***'
PRINT ''
  
  SELECT number, academicStatusCode 
  FROM Student 
  WHERE academicStatusCode != 'N'  
  ORDER BY number ASC

  --6.
PRINT '*** QUESTION6 List the countries persons are from, but show each country code only once.***'
PRINT ''

  SELECT DISTINCT countryCode 
  FROM Person

  --7.
 PRINT '*** QUESTION7 College management would like to see the new values that will result if all incidental fees are increased by 10%. Show item aliased as ‘Incidental Fee Item’.  
  Show amountPerSemester aliased as ‘Current Fee’.Use an expression to calculate the increased fee and alias the output as ‘Increased  Fee’.Order the results in ascending order by item.
  The values created by your expression will have many decimal places.Later we will discuss how to format money amounts in a more conventional form.***'
  PRINT ''

  SELECT item AS 'Incidental Fee Item',amountPerSemester AS 'Current Fee' ,amountPerSemester+amountPerSemester*0.1 AS 'Increased Fee'
  FROM IncidentalFee
  ORDER BY ITEM ASC
 
--8.
PRINT '*** QUESTION 8 List all data for students with finalmark less than (but not equal to) 55 and greater than 0.***'

  SELECT *  
  FROM CourseStudent 
  WHERE finalmark < 55 AND
       finalMark > 0
	   

--9.
PRINT '*** QUESTION9 List the number of any room that has a capacity greater than or equal to 40, is a lab, has computers with 4GB memory, and is located at the Doon campus. ***'

  SELECT number
  FROM Room
  WHERE capacity >=40 
  AND islab = '1'
  AND memory= '4GB '
  AND campusCode='D'

--10.
PRINT '*** QUESTION10 List all employees who teach in the School of Trades and Apprenticeship and are located at the Doon, Guelph or Waterloo campus.***'

 SELECT *
 FROM Employee
 WHERE schoolCode='TAP'
 AND ( campusCode= 'D'OR  campusCode= 'G'  OR  campusCode='W')