use enkelibrary;
CREATE TABLE CheckInOut_Detail
(
CheckInOut_DetailID int NOT NULL AUTO_INCREMENT,
InventoryID int NOT NULL,
CheckInOut_HeaderID int NOT NULL,
checkInDate date NOT NULL,
checkOutDate date NOT NULL,
dueDate date NOT NULL,

CONSTRAINT CheckInOutDetail_PK PRIMARY KEY (CheckInOut_DetailID),
CONSTRAINT InventoryID_FK FOREIGN KEY (InventoryID) REFERENCES Inventory(InventoryID),
CONSTRAINT CheckInOut_Header_FK FOREIGN KEY (CheckInOut_HeaderID) REFERENCES CheckInOut_Header(CheckInOut_HeaderID)



)
;