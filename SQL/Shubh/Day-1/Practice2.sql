create table JobHistory(
EmployeeID INT PRIMARY KEY Identity(1,1),
StartDate Date Not null,
EndDate varchar (10),
CONSTRAINT CHK_Person check (EndDate Like '--/--/----'),
JobID int not null,
DepartmentId int
);
insert into JobHistory values ('2021-02-08','2021/08/05', 2, 4);

drop table JobHistory;

select * from JobHistory