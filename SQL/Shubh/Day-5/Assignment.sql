create table Employee (
	EmployeeId int not null primary key, 
	FirstName varchar (30) not null, 
	LastName varchar (30) not null, 
	Salary money, 
	JoiningDate DATETIME not null, 
	Department char(25) not null, 
	ManagerId int)


insert into Employee values 
(1,'John','Abraham',1000000,'2013/01/01 12:00:00 AM','Banking',null),
(2,'Ricky','Ponting',800000,'2013/01/01 12:00:00 AM','Insurance',1),
(3,'McCalister','Thomas',700000,'2013/02/01 12:00:00 AM','Banking',1),
(4,'Tom','Jerry',600000,'2013/02/01 12:00:00 AM','Insurance',2),
(5,'Freda','Pinto',6500000,'2013/02/01 12:00:00 AM','Insurance',3),
(6,'Philip','Mathew',750000,'2013/01/01 12:00:00 AM','Services',3),
(7,'TestName1','420',650000,'2013/01/01 12:00:00 AM','Service',2),
(8,'TestName2','Check',600000,'2013/2/1 12:00:00 AM','Insurance',2)



create table Incentives (
	EmployeeRefId int not null 
	constraint fk_empid foreign key references Employee(EmployeeId) 
	constraint pk_empref primary key, 
	IncentiveDate date,
	IncentiveAmount money
	)

insert into Incentives values 
	(1,'2013-02-1',5000),
	(2,'2013-2-1',3000),
	(3,'2013-02-01',4000)


--Join Operations

--Query-1
--Get difference between JOINING_DATE and INCENTIVE_DATE from employee and incentives table
SELECT e.FirstName, e.JoiningDate , i.IncentiveDate, DATEDIFF(dd,JoiningDate,GETDATE()) - DATEDIFF(dd,IncentiveDate,GETDATE()) AS 'Difference' FROM Employee e left join Incentives i on e.EmployeeId=i.EmployeeRefId

--Query-2
--Select first_name, incentive amount from employee and incentives table for those employees who have incentives and incentive amount greater than 3000
select e.FirstName,i.IncentiveAmount from Employee e join Incentives i on e.EmployeeId=i.EmployeeRefId where i.IncentiveAmount>3000

--Query-3
--Select first_name, incentive amount from employee and incentives table for all employees even if they didn’t get incentives.
select e.FirstName,i.IncentiveAmount from Employee e left join Incentives i on e.EmployeeId=i.EmployeeRefId

--Query-4
--Select EmployeeName, ManagerName from the employee table.
select e.FirstName as 'EmployeeName', f.FirstName as 'ManagerName' from employee e left join employee f on e.ManagerId=f.EmployeeId


--Query-5
--Select first_name, incentive amount from employee and incentives table for all employees even if they didn’t get incentives and set incentive amount as 0 for those employees who didn’t get incentives.
select e.FirstName, case when IncentiveAmount IS NULL then 0 else IncentiveAmount end as 'IncentiveAmount'
from Employee e left join Incentives i on e.EmployeeId=i.EmployeeRefId 

