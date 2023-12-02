use enkelibrary;

-- drop view overdueBooks;

-- Create view
CREATE VIEW overdueBooks AS
	-- Select list -> CheckInOut_Header: PatronID, BranchID | CheckInOut_Detail: InventoryID, CheckinDate, DueDate, (derived from prev. 2) LateFee
    SELECT 
        ch.PatronID,
        BranchID,
        cd.InventoryID,
        checkInDate,
        dueDate,
        CalculateLateFees(dueDate, checkInDate) as LateFee
    FROM
		-- Detail is our left table
        CheckInOut_Detail cd
			-- Header is our right table
			 INNER JOIN checkinout_header ch
             -- Where the header is the same in both tables, check if the book is overdue by seeing if checkInDate - dueDate > 1
			 ON cd.CheckInOut_HeaderID = ch.CheckInOut_HeaderID
             WHERE datediff(cd.checkInDate, dueDate) > 1
             
	ORDER BY LateFee DESC
;


