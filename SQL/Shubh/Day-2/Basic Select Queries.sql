--basic select queries

--Num1
SELECT * FROM Employees

--Num2
SELECT FirstName,LastName FROM Employees

--Num3
SELECT 'Employee Name'= FirstName FROM Employees

--Num4
SELECT * FROM Employees WHERE FirstName= 'Steven'

--Num5
SELECT * FROM Employees WHERE FirstName= 'Neena' OR FirstName='Lex'

--Num6
SELECT * FROM Employees WHERE FirstName !=  'Neena' AND FirstName != 'Nina'

--Num7
SELECT * FROM Employees WHERE Salary BETWEEN 5000 AND 8000

--Num8
SELECT CONCAT(FirstName, '-', LastName) AS names, Salary, (Salary*0.12) AS 'ProviFund' FROM Employees

--Num9
SELECT * FROM Employees WHERE FirstName LIKE 'N%'

--Num10
SELECT DISTINCT DepartmentID FROM employees;

--Num11
SELECT * FROM Employees ORDER BY FirstName DESC

--Num12
SELECT EmployeeID, CONCAT(FirstName, '-', LastName) AS names , Salary FROM Employees ORDER BY Salary ASC

--Num13
SELECT TOP 2 Salary FROM Employees
SELECT TOP 2 Salary FROM Employees ORDER BY SALARY DESC