--1. Create the HospitalDB database
CREATE DATABASE HospitalDB;

--2. Use the HospitalDB
USE HospitalDB;

--3. Create a sample Patients table
CREATE TABLE Patients (
    PatientID INT PRIMARY KEY IDENTITY(1,1),
    FirstName NVARCHAR(100),
    LastName NVARCHAR(100),
    DateOfBirth DATE,
    Gender CHAR(1),
    AdmissionDate DATETIME
);


--4. Insert sample data into Patients table
INSERT INTO Patients (FirstName, LastName, DateOfBirth, Gender, AdmissionDate)
VALUES 
('John', 'Doe', '1985-02-20', 'M', GETDATE()),
('Jane', 'Smith', '1990-11-15', 'F', GETDATE()),
('David', 'Lee', '1975-07-10', 'M', GETDATE());


--5. BACKUP STRATEGY SECTION

--5.1. FULL BACKUP (Every Sunday at 2 AM)
-- Save as: C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\Backup\HospitalDB\Full\HospitalDB_Full_YYYYMMDD.bak
BACKUP DATABASE HospitalDB 
TO DISK = 'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\Backup\HospitalDB\Full\HospitalDB_Full_20250525.bak'
WITH FORMAT, INIT, 
     NAME = 'Full Backup of HospitalDB', 
     SKIP, NOREWIND, NOUNLOAD, STATS = 10;


--5.2. DIFFERENTIAL BACKUP (Every night at 2 AM, except Sunday)
-- Save as: C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\Backup\HospitalDB\Differential\HospitalDB_Diff_YYYYMMDD.bak
BACKUP DATABASE HospitalDB 
TO DISK = 'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\Backup\HospitalDB\Differential\HospitalDB_Diff_20250526.bak'
WITH DIFFERENTIAL,
     INIT, 
     NAME = 'Differential Backup of HospitalDB', 
     SKIP, NOREWIND, NOUNLOAD, STATS = 10;


--5.3. TRANSACTION LOG BACKUP (Every hour)
-- Save as: C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\Backup\HospitalDB\Logs\HospitalDB_Log_YYYYMMDD_HHMM.trn
BACKUP LOG HospitalDB 
TO DISK = 'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\Backup\HospitalDB\Logs\HospitalDB_Log_20250526_0100.trn'
WITH INIT, 
     NAME = 'Transaction Log Backup of HospitalDB',
     SKIP, NOREWIND, NOUNLOAD, STATS = 10;