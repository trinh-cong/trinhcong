IF EXISTS (SELECT * FROM sys.databases WHERE Name LIKE 'EmployeeDB')
DROP DATABASE EMployeeDB
GO
CREATE DATABASE EmployeeBD
GO
USE EmployeeBD
GO
CREATE TABLE Department (
DepartId int Primary key,
DepartName varchar(50) not null,
[Description] varchar(100) not null
);
CREATE TABLE Employee (
EmpCode char(6) Primary key,
FirstName varchar(30) not null,
LastName varchar(30) not null,
Birthday smalldatetime not null,
Gender Bit Default 1,
[Address] varchar(100),
DepartID int constraint fkEmploy foreign key (DepartID) references Department(DepartID),
Salary Money
);

INSERT into Department values (122,'security','enough quantity')
INSERT into Department values (133,'manage','enough quantity')
INSERT into Department values(144,'sales agent','recruit')
INSERT into Employee values  ('985','huyen','nguyen dieu','2004-11-10','1','Quang Tien-SS',133,4000)
INSERT into Employee values ('546','cong','trinh tu','2004-07-10','2','Quang Tien-SS',122,3000)
INSERT into Employee values ('216','anh',' ngyen thuy','2004-07-20','2','Quang Tien-SS',122,2000)


SELECT *FROM Employee
SELECT *FROM Department

--Increase the salary for all employees

UPDATE Employee SET Salary=Salary+ Salary * 0.1

--ALTER TABLE
ALTER TABLE Employee
ADD CHECK (Salary>0);

--VIEW
SELECT*FROM Employee
SELECT*FROM Department

