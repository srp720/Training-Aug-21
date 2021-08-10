create table JobHistory(
EmployeeID INT PRIMARY KEY Identity(1,1),
StartDate Date Not null,
EndDate Date not null,
CONSTRAINT CHK_Person check (EndDate Like '--/--/----'),
JobID int not null,
DepartmentId int
);
insert into JobHistory values ('2021-02-08','08-05-2021',2,4);

drop table JobHistory;