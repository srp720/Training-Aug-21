--Practice-2
--Write a SQL statement to create a table named JobHistory including columns EmployeeId, StartDate, End_Eate, Job_Id and Department_Id and make sure that the value against column EndDate will be entered at the time of insertion to the format like ‘–/–/—-‘.

CREATE TABLE JobHistory(
EmployeeID INT PRIMARY KEY IDENTITY(1,1),
StartDate DATE NOT NULL,
EndDate VARCHAR(10),
CONSTRAINT CHK_DATE CHECK (EndDate LIKE '--/--/----'),
JobID INT NOT NULL,
DepartmentId VARCHAR(15)
);
INSERT INTO JobHistory VALUES ('2019-08-06','08/05/2021', 6, 'CIVIL');

select * from JobHistory