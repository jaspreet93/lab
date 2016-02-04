--Jjanjuha7395940.sql
--Assignment 3
--Jaspreet janjuha


--1.
PRINT '***  QUESTION1 1.List the required course prerequisites for COMP2280. Include the course codes and course names for each prerequisite in the result. Order the result by 
           the prerequisite course code. ***'
PRINT ''  SELECT * FROM Course
          SELECT * FROM CoursePrerequisiteAnd

		 SELECT C.name,C.number
		 FROM Course C INNER JOIN CoursePrerequisiteAnd CP
		 ON C.number = CP.prerequisiteNumber
		 WHERE CP.courseNumber = 'COMP2280'
		 ORDER BY CP.prerequisiteNumber


		
--2.
PRINT '*** QUESTION2.List the employees whose last name begins with the letter “W”, using a LIKE predicate. Order the result by employee number.  Display the employee’s number, 
          first name, last name, schoolCode, and phone extension.***'
PRINT ''

	  SELECT E.number,P.firstName,P.lastName,E.schoolCode,E.extension
	  FROM Person P INNER JOIN EMPLOYEE E
	  ON P.number = E.number
	  WHERE P.lastName LIKE ('W%')
	  ORDER BY E.number 

--3.
PRINT '*** QUESTION3. List the persons from the Person table who are not students. Show the person’s number, first name, last name, and city. Use LEFT OUTER JOIN.
        Order the results by the person’s last name.***'
PRINT ''
    

	  SELECT P.number,P.firstName,P.lastName,P.city
	  FROM Person P LEFT OUTER JOIN Student S
	  ON P.number = S.number
	  WHERE S.number IS NULL
	  ORDER BY P.lastName 

--4.
PRINT '***List the lab software installed on machines in room 2A205.  List each software package’s unique identifier along with the software product’s name. Order the result 
          by software product name. ***'
PRINT ''    
        
		 SELECT * FROM LabSoftware
		 SELECT * FROM Software
		 SELECT * FROM Room
 
           SELECT * 
		   FROM LabSoftware LS INNER JOIN Room R
		   ON LS.roomId = R.id
		   INNER JOIN Software S
		   ON S.uniqueId = S.product
		   ORDER BY product 
		   WHERE number = 2A205

		   		  