use enkelibrary;
CREATE TABLE Inventory(
InventoryID int NOT NULL AUTO_INCREMENT,
BookID int NOT NULL,
BranchID int NOT NULL,

CONSTRAINT Inventory_PK PRIMARY KEY (InventoryID),
CONSTRAINT BookInv_FK FOREIGN KEY (BookID) REFERENCES Book(BookID),
CONSTRAINT bookBranch_FK FOREIGN KEY (BranchID) REFERENCES Branch(BranchID)
)
;