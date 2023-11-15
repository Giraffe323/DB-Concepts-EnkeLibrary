USE enkelibrary;
Create table Employee
(
EmployeeID int NOT NULL AUTO_INCREMENT,
empFname char(30) NOT NULL,
empMname char(30),
empLname char(40) NOT NULL,
empPosition char(30) NOT NULL,
empAddress varchar(100) NOT NULL,
empCity char(30) NOT NULL,
empState char(2) NOT NULL,
empZip char(5) NOT NULL,
empEmail varchar(50) NOT NULL,
empPhone char(10) NOT NULL,
empBranchID int NOT NULL,
CONSTRAINT Emp_PK primary key(EmployeeID),
CONSTRAINT empBranch_FK FOREIGN KEY (empBranchID) REFERENCES Branch(BranchID)
)
;