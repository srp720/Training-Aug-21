--Practice-4
--Write a SQL statement to create a table employees including columns Employee_Id, FirstName, LastName, Email, PhoneNumber, Hire_Date, Job_Id, Salary, Commission, Manager_Id and Department_Id and make sure that, the Employee_Id column does not contain any duplicate value at the time of insertion, and the foreign key column DepartmentId, reference by the column DepartmentId of Departments table, can contain only those values which are exists in the Department table and another foreign key column JobId, referenced by the column JobId of jobs table, can contain only those values which are exists in the jobs table.


CREATE TABLE employees ( 
	EmployeeID INT PRIMARY KEY Identity(1,1), 
	FIRST_NAME varchar(20) not NULL, 
	LAST_NAME varchar(25) NOT NULL, 
	EMAIL varchar(25) NOT NULL, 
	PHONE_NUMBER varchar(20) not NULL, 
	HIRE_DATE date NOT NULL, 
	JOB_ID int NOT NULL, 
	SALARY decimal(8,2) NOT NULL,
	COMMISSION_PER decimal(5,2) NOT NULL,
	MANAGER_ID int NOT NULL, 
	DEPARTMENT_ID int NOT null, 

	CONSTRAINT FK_DEPARTMENT_ID FOREIGN KEY (DEPARTMENT_ID) REFERENCES departments(DEPARTMENT_ID),
	CONSTRAINT FK_JOB_ID FOREIGN KEY (JOB_ID) REFERENCES jobs(JOB_ID)
);

