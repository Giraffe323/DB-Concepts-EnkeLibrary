-- Test file for Stored Procedure CheckoutLimit5
-- NOTE: The order in which you run these test files does not matter
--       one should work, and one shouldn't. 
use enkelibrary;

-- Attempts to add `InventoryID 42` to `CheckInOut_HeaderID 19`
CALL CheckoutLimit5(13, 19, DATE '2023-10-22', DATE '2023-11-22');