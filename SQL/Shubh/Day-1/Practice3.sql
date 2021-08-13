--Practice-3
--Write a SQL statement to create a table named jobs including columns JobId, JobTitle, MinSalary and MaxSalary, and make sure that, the default value for JobTitle is blank and MinSalary is 8000 and MaxSalary is NULL will be entered automatically at the time of insertion if no value assigned for the specified columns.


CREATE TABLE jobs( 
JOB_ID INT PRIMARY KEY IDENTITY(1,1), 
JOB_TITLE VARCHAR(35) DEFAULT ' ', 
MIN_SALARY DECIMAL(6,0) DEFAULT 8000, 
MAX_SALARY DECIMAL(6,0) DEFAULT NULL
);
INSERT INTO jobs (MIN_SALARY,MAX_SALARY) values (60000,NULL),(1000,2000)
INSERT INTO jobs (JOB_TITLE,MAX_SALARY) VALUES ('Sr_Executive',12000)

select * from jobs
