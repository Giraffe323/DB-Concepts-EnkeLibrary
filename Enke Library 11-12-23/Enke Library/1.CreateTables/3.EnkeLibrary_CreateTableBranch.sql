USE enkelibrary;
Create table Branch
(
BranchID int NOT NULL AUTO_INCREMENT,
branchName char(60) NOT NULL,
branchAddress varchar(100) NOT NULL,
branchCity char(40) NOT NULL,
branchState char(2) NOT NULL,
branchZip char(5) NOT NULL,
branchPhone char(10) NOT NULL,
branchEmail varchar(50) NOT NULL,

CONSTRAINT Branch_PK primary key(BranchID)
)
;

