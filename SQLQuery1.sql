/*
Problem_1 ITI
*/
use ITI

select * from Student
insert into Student(St_Id,St_Fname,St_Lname,St_Age,St_Address,Dept_Id)
values(4444,'Abdelrahma','Abaza',21,'Sharqia',30)


select * from  Instructor
insert into Instructor(ins_Id,Salary,Dept_Id)
values(16,'Mohammed',4000,30)

select * from Instructor
Update Instructor 
set Salary=Salary+Salary*.2
-- No condition 



select * from Student

SELECT COUNT(*) AS NumberOfStudentsWithAge
FROM Student
WHERE St_Age IS NOT NULL;

/*2.	Get all instructors Names without repetition*/
SELECT DISTINCT Ins_Name
FROM Instructor;

/*3.	Display instructor Name and Department Name */
SELECT i.Ins_Name, d.Dept_Name
FROM Instructor i
LEFT JOIN Department d ON i.Dept_Id = d.Dept_Id;


/*4.	Display student full name and the name of the course he is taking
For only courses which have a grade  
*/

SELECT CONCAT(s.St_Fname, ' ', s.St_Lname) AS FullName, c.Crs_Name
FROM Student s
JOIN Stud_Course cs ON s.St_Id = cs.St_Id
JOIN Course c ON cs.Crs_Id = c.Crs_Id
WHERE cs.Grade IS NOT NULL;

/*5.	Display number of courses for each topic name */
SELECT t.Top_Name, COUNT(c.Crs_Id) AS CourseCount
FROM Topic t
LEFT JOIN Course c ON t.Top_Id = c.Top_Id
GROUP BY t.Top_Name;

/*6.	Select Student first name and the data of his supervisor */
SELECT s.St_Fname AS StudentFirstName, m.St_Fname AS SupervisorFirstName
FROM Student s
LEFT JOIN Student m ON s.St_super = m.St_Id;




Select   Ins_Name as'Name',
Dept_Id as 'Department'
from Instructor
-- version of server that U r connect to
select @@VERSION


-- To know name of server that U connect to
select @@SERVERNAME


/*
Problem_2 MyCompany 
*/
use MyCompany
select * from Employee

select Fname,Lname,Salary,Dno
from Employee

select Pname,Plocation,Dnum
from Project

select Fname+' '+Lname as 'Full name',
-- Annual salary = salary * 12  
(Salary*12*.1) as 'ANNUAL COMM'
from Employee


select SSN as 'ID', 
Fname+' '+Lname as Name
from Employee
Where Salary >1000


select SSN as 'ID', 
Fname+' '+Lname as Name
from Employee
Where Salary*12 >10000

select Fname+' '+Lname as Name,
SSN as 'ID'
from Employee
Where Sex ='F'

select Dname,Dnum
from Departments
where MGRSSN=968574


select Pnumber,Pname,Plocation
from Project
where Dnum=10