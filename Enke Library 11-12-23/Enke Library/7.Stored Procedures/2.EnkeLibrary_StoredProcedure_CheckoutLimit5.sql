-- Stored Procedure to simulate checkout process, when adding books to patrons cart (checkinout_header),
-- check how many items are in the current transaction (how many inventoryIDs associated with the given checkInOut_HeaderID), 
-- if at or past the limit, dont allow any more to be added to the transaction. 
use enkelibrary;
DELIMITER //
CREATE PROCEDURE CheckoutLimit5 ( -- Declare input variables
    IN varInventoryID   INT,
    IN varCheckInOut_HeaderID   INT,
    IN varCheckOutDate  DATE,
    IN varDueDate   DATE
)

CheckoutLimit: BEGIN -- Procedure BODY with label 'CheckoutLimit'
    DECLARE numCheckouts    INT;
    DECLARE maxCheckouts    INT DEFAULT 5;
    -- Check how many books the chosen patron has checked out
    SELECT  COUNT(InventoryID) INTO numCheckouts
    FROM checkinout_detail
    WHERE checkinout_detail.CheckInOut_HeaderID = varCheckInOut_HeaderID
    ; -- end SELECT COUNT()

    IF (numCheckouts >= maxCheckouts) -- Check if patron is at or beyond item limit,
        THEN                          -- If so, display error message, rollback, and end transaction.
            SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Patron has too many books checked out! unable to add any more';
            ROLLBACK;
                LEAVE CheckoutLimit;
    END IF;
    
  -- ELSE                              -- Otherwise, if patron is not at the item limit, add the item to the transaction.
        INSERT INTO checkinout_detail(InventoryID, CheckInOut_HeaderID, checkOutDate, dueDate)
        VALUES (varInventoryID, varCheckInOut_HeaderID, varCheckOutDate, varDueDate);
        COMMIT;
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Item added successfully!';
END CheckoutLimit;
//
DELIMITER ;