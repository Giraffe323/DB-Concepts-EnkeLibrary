-- Insert sample data into the inventory table
INSERT INTO inventory (BookID, BranchID) VALUES
(18, 22),
(18, 24),
(18, 36);

-- Trigger the low inventory warning by deleting a book with multiple copies
DELETE FROM inventory WHERE BookID = 18;

-- See that the trigger works by checking for the warning message
-- You can do this by viewing the console output, logs, or checking for the warning message in your application.

