//Student details
Create table Student(
Id INT PRIMARY KEY AUTO_INCREMENT,
StudentId INT UNIQUE NOT NULL,
Name VARCHAR(200) NOT NULL,
Email VARCHAR(200) NOT NULL UNIQUE,
Username VARCHAR(32) NOT NULL UNIQUE,
Password VARCHAR(32) NOT NULL,
dprParsed TINYINT DEFAULT 0,
DateCreated DATETIME DEFAULT current_timestamp(),
DateModified DATETIME NULL
);

//DPR content
Create table CourseCompletedByStudent(
Id INT AUTO_INCREMENT PRIMARY KEY,
StudentId INT,
Term VARCHAR(2),
Semester VARCHAR(2),
Department VARCHAR(10),
CourseNumber VARCHAR(10),
Credits VARCHAR(3),
Grade VARCHAR(5),
Description VARCHAR(100),
DateCreated DATETIME DEFAULT current_timestamp()
);

//courses - prerequisite 
CREATE TABLE CoursePreReq(
Id INT AUTO_INCREMENT PRIMARY KEY,
Department VARCHAR(5),
CourseNumber VARCHAR(10),
Credits VARCHAR(3),
prerequisite VARCHAR(200)
); 

//planner courses selected
CREATE TABLE PlannerCourses(
    Id INT AUTO_INCREMENT PRIMARY KEY,
    StudentId INT,
    Term VARCHAR(6),
    Semester VARCHAR(4),
    Department VARCHAR(5),
    CourseNumber VARCHAR(10),
    Credits VARCHAR(3),
    DateCreated DATETIME DEFAULT current_timestamp()
);

INSERT INTO PlannerCourses(StudentId, Department, CourseNumber, Credits) VALUES (200507859, "COMP", "584", "3.0");
INSERT INTO PlannerCourses(StudentId, Department, CourseNumber, Credits) VALUES (200507859, "COMP", "282", "3.0");
INSERT INTO PlannerCourses(StudentId, Department, CourseNumber, Credits) VALUES (200507859, "COMP", "584", "3.0");

Delete from PlannerCourses where Studentid = 200507859 AND DateCreated != "2022-04-03 20:54:33";