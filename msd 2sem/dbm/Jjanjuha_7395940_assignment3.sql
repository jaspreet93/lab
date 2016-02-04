--Jjanjuha7395940.sql
--Assignment 2
--Jaspreet janjuha

--1.
PRINT ' *** QUESTION 1 List the required course prerequisites for COMP2280. Include the course codes and course names for each prerequisite in the result. Order the result by the
                       prerequisite course code.  *** '
PRINT ''
                SELECT cp.prerequisiteNumber,c.number,c.name 
			    FROM Course c INNER JOIN CoursePrerequisiteAnd cp on cp.courseNumber=c.number
                WHERE cp.courseNumber=  'COMP2280'
                ORDER BY cp.prerequisiteNumber
PRINT ''

 --2.
PRINT ' *** QUESTION 2 List the employees whose last name begins with the letter “W”, using a LIKE predicate. Order the result by employee number.  Display the employee’s number, 
            first name, last name, schoolCode, and phone extension.*** '
PRINT ' '

              SELECT e.number,p.firstName,p.lastName,e.schoolCode,e.extension 
			  FROM Person P INNER JOIN Employee e on e.number =p.number
              WHERE p.lastName LIKE ('W%')
		      ORDER BY e.number

--3.
PRINT ' *** QUESTION 3 List the persons from the Person table who are not students. Show the person’s number, first name, last name, and city. Use LEFT OUTER JOIN. Order the results 
            by the person’s last name. *** '
PRINT ' '

             SELECT p.number,p.firstName,p.lastName,p.city
			 FROM Person p LEFT OUTER JOIN Student s 
			 ON p.number=s.number
             WHERE S.number is null
			 ORDER BY p.lastName


--4.
PRINT '*** List the lab software installed on machines in room 2A205.  List each software package’s unique identifier along with the software product’s name. Order the result by 
           software product name. ***'
PRINT ''  
          select * from LabSoftware
		  select * from software
		  select * from Room

          SELECT ls.softwareUniqueId,s.product
		  FROM LabSoftware ls INNER JOIN Software s
		  ON ls.softwareUniqueId = s.uniqueId
		  INNER JOIN Room r 
		  ON r.id = ls.roomId
		  WHERE r.number = '2A205'
		  ORDER BY  s.product 
		  
--5.
PRINT '*** ***'
