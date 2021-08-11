CREATE TABLE employee(
EmployeeId INT PRIMARY KEY Identity(1,1), 
EmployeeFirstName varchar(30),
EmployeeLastName varchar(30),
EmployeeDept varchar(20),
);

INSERT INTO employee VALUES 
('Leonel', 'Messi', 'SalesManager'),
('Cristiano', 'Ronaldo', 'Sales'),
('NGolo', 'Cante', 'Sales'),
('Jan', 'Oblak', 'Sales'),
('Jim', 'Halpert', 'SalesManager');

CREATE TABLE inventory(
CarId INT PRIMARY KEY Identity(1,1),
CarModel varchar(50),
CarBrand varchar(50),
CarPrice money,
);

INSERT INTO inventory VALUES 
('Cheron','Mitsubishi',1000000),
('Hyate','Suzuki',5000),
('C100','Mercedes',50000),
('Sonic','McLaren',9900000),
('E-Mode','MG-Hector',9910000);

CREATE TABLE sales(
SalesId numeric(10),
SalesPersonId int,
SalesPerson varchar(30),
CommisionPer decimal(4,2),
CarId int,
CONSTRAINT FK_SalesPersonId FOREIGN KEY (SalesPersonId) REFERENCES employee(EmployeeId),
CONSTRAINT FK_CarId FOREIGN KEY (CarId) REFERENCES inventory(CarId),
);

INSERT INTO sales VALUES 
(12,5,'Jan Oblak', 2.5, 5),
(15,3,'Cristiano Ronaldo', 5.5, 3),
(19,1,'Kevin DeBryne', 7, 5),
(21,6,'Jim Halpert', 6, 1);



SELECT * FROM employee

SELECT * FROM inventory

SELECT * FROM sales
