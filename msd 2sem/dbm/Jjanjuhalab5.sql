 SELECT * FROM Person
 SEleCT * FROM Car
 SELECT * FROM Sport

SELECT p.firstname,c.name[Car], s.name [sport]
FROM Person P left OUTER JOIN  Sport S ON P.SportID  = s.ID

left outer JOIN CAR C  ON C.id = P.CarID

SELECT * from Person
SELECT * FROM Employee
SELECT * FROM School

SELECT p.firstname,p.lastname ,s.name 
FROM Employee E  INNER JOIN Person P  ON p.number = e.number 
FULL OUTER JOIN School s ON e.schoolCode = s.code

SELECT p.firstName,p.lastname ,pa.invoiceNumber, pa.amount
FROM Person p INNER JOIN Student s
ON p.number  = s.number
LEFT OUTER JOIN Payment pa
ON pa.studentNumber = s.number
ORDER BY p.lastname ,p.firstname

-- PERSON TOEMPLOYEE AND PERSON TOSTUDENT HAVE ALWAYS INNER JOIN
select * FROM Person
select * from Student
select * from Audit

SELECT p.firstname,p.lastname,a.invoiceNumber
FROM Person p INNER JOIN Student s
ON p.number = s.number
LEFT OUTER JOIN Audit a
ON s.number = a.studentNumber 

select * from Employee
select * from person

SELECT p1.number as [Emp.number] ,p1.lastname as [Employee Name] ,p2.number as [Super Number],p2.lastname as [Supervisor]
FROM Employee e1 LEFT OUTER  JOIN Employee e2
on e1.reportsTo = e2.number
INNER JOIN Person p1  ON 
e1.number = p1.number 
LEFT OUTER JOIN  Person p2
ON p2.number = e2.number

SELECT e1.number,p1.lastname, e2.number,p2.lastname
FROM Employee e1 LEFT OUTER JOIN Employee e2
ON e1.reportsTo = e2.number
INNER JOIN Person p1 ON p1.number = e1.number
LEFT OUTER JOIN Person p2 ON p2.number = e2.number