
use enkelibrary;

CREATE VIEW overdueBooks
as

SELECT
    CheckInOut_Detail.*, Inventory.InventoryID, Book.BookName, Patron.PatronID
    FROM CheckInOut_Detail
    INNER JOIN Inventory ON CheckInOut_Detail.InventoryID = Inventory.InventoryID
    INNER JOIN Book ON CheckInOut_Detail.BookID = Book.BookID
;


