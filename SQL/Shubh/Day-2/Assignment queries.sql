--Assignment Update Queries
--Query1
ALTER TABLE Employees DROP CONSTRAINT UniqueKeyEmail

UPDATE Employees SET Email='not available'


--Query2
UPDATE Employees SET Email='NOT AVAILABLE', CommissionPct=0.10

--Query3
UPDATE Employees SET Email='not available', CommissionPct=0.10 WHERE DepartmentID=110;

--Query4
UPDATE Employees SET Email='NOT APPLICABLE' WHERE DepartmentID=80 AND CommissionPct<0.20

--Query5
UPDATE Employees SET Email='NoT AvaIlaBlE' FROM Employees Emp JOIN Departments Dept ON Dept.DepartmentID=Emp.DepartmentID WHERE Dept.DepartmentName='Accounting'

--Query6
UPDATE Employees SET Salary = CASE WHEN Salary<5000 THEN 8000 ELSE Salary END WHERE EmployeeID=105

--Query7
UPDATE Employees SET JobId='SH_CLERK' WHERE EmployeeID=118 AND DepartmentID=30 AND JobId!='SH%'

--Query8
UPDATE Employees 
	SET Salary = CASE 
		WHEN DepartmentID=40	THEN Salary+((0.25*Salary))
		WHEN DepartmentID=90	THEN (Salary+(0.15*Salary))
		WHEN DepartmentID=110	THEN (Salary+(0.10*Salary))
		ELSE Salary
	END

--Query9
--Columns Missing

SELECT * FROM Employees