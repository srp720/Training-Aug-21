CREATE TABLE jobs( 
JOB_ID INT PRIMARY KEY Identity(1,1), 
JOB_TITLE varchar(35) DEFAULT ' ', 
MIN_SALARY decimal(6,0) DEFAULT 8000, 
MAX_SALARY decimal(6,0) DEFAULT NULL
);
drop table jobs
insert into jobs (MIN_SALARY,MAX_SALARY) values (1000,2000),(500,1000)
select * from jobs