-- Insert sample data into the inventory table
INSERT INTO inventory (BookID, BranchID) VALUES
(17, 15),
(35, 15);

-- Trigger the low inventory warning by deleting one inventory record for a book with only two copies
DELETE FROM inventory WHERE BookID = 17;

-- See that the trigger works by checking for the warning message
-- You can do this by viewing the console output, logs, or checking for the warning message in your application.

