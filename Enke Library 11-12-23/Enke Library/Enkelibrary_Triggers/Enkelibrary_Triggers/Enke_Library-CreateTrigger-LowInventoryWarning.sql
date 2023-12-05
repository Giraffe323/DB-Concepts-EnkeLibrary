USE enkelibrary;

DELIMITER //
CREATE TRIGGER trg_low_inventory_warning 
AFTER delete ON inventory
FOR EACH ROW
BEGIN  
	 -- Declare variables to store the count of copies and the minimum inventory amount
    DECLARE numCopies INT; 
    DECLARE inventoryMin INT DEFAULT 1;   
    
    -- Count the number of copies for the book in the updated row
    SELECT COUNT(InventoryID) INTO numCopies 
    FROM inventory 
    WHERE inventory.BookID = OLD.BookID;
     
	-- Check if the number of copies is below the minimum amount
    IF numCopies <= inventoryMin THEN 
    -- Raise a custom exception if the inventory is low
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Warning!!! Low Inventory';
    END IF;
END; //
DELIMITER ;
