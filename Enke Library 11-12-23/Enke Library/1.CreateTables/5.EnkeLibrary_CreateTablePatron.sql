USE enkelibrary;
CREATE TABLE Patron
(
PatronID int NOT NULL AUTO_INCREMENT,
patFName char(30) NOT NULL,
patMName char(30),
patLName char(40) NOT NULL,
patAddress varchar(100),
patCity char(30),
patState char(2),
patZip char(5),
patPhone char(10),
patEmail varchar(50),
patPreferredBranch int NOT NULL,

CONSTRAINT Pat_PK PRIMARY KEY(PatronID),
CONSTRAINT patBranch_FK FOREIGN KEY (patPreferredBranch) REFERENCES Branch(BranchID)
)
;