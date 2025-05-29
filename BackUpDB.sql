CREATE DATABASE TrainingDB; 
GO 
USE TrainingDB; 
GO 
CREATE TABLE Students ( 
StudentID INT PRIMARY KEY, 
FullName NVARCHAR(100), 
EnrollmentDate DATE 
); 
INSERT INTO Students VALUES  
(1, 'Sara Ali', '2023-09-01'), 
(2, 'Mohammed Nasser', '2023-10-15'); 

SELECT * FROM Students;