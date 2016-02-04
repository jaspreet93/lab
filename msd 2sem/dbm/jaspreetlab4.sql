SELECT p.name,c.name ,pc.semester
FROM Course c Inner Join ProgramCourse pc 
ON c.number = pc.courseNumber
INNER JOIN Program p
ON p.code = pc.programCode
WHERE p.code='0040C'

SELECT c.number,c.name , p.firstName ,p.lastname
FROM Person p Inner Join CourseStudent cs ON 
p.number = cs.studentNumber
INNER JOIN CourseOffering co
ON cs.CourseOfferingId = co.Id
INNER JOIN Course c
ON co.courseNumber = c.number
WHERE c.number='INFO8105'


 SELECT p.firstName,p.lastname ,a.amount
 FROM Person p Inner Join Student s
 ON 
 p.number =s.number
  inner join Audit a
 on a.studentNumber = s.number

 SELECT * FROM Person
 SELECT * FROM Car
 SELECT * FROM Sport

SELECT p.firstname,c.name, s.name
FROM Person P INNER JOIN  Sport S ON P.SportID  = s.ID

INNER JOIN CAR C  ON C.id =P.CarID

