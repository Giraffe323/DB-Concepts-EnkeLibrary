use enkelibrary;
CREATE TABLE CheckInOut_Header
(
CheckInOut_HeaderID int NOT NULL AUTO_INCREMENT,
PatronID int NOT NULL,
BranchID int NOT NULL,
EmployeeID int NOT NULL,

CONSTRAINT CheckInOutHeader_PK PRIMARY KEY (CheckInOut_HeaderID),
CONSTRAINT PatronID_FK FOREIGN KEY (PatronID) REFERENCES Patron(PatronID),
CONSTRAINT checkBranch_FK FOREIGN KEY (BranchID) REFERENCES Branch(BranchID),
CONSTRAINT EmployeeID_FK FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID)
)
;