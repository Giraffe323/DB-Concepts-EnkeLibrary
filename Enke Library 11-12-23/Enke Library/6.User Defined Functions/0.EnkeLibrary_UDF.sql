use enkelibrary;

--Function decaration, this function calculates the fees incurred by someone, it takes the due date and the date for the book
-- to be returned and uses it to determine how many days late the book is and multiplies that by the late fee, assumed to be $1.00 per day
CREATE FUNCTION CalculateLateFees(dueDate DATE, returnDate DATE) RETURNS DECIMAL(10, 2)
BEGIN
    -- create variables to hold the number of days that the book is overdue and the late fee, formatted to 2 decimals
    DECLARE numDaysLate INT;
    DECLARE lateFee DECIMAL(10, 2);
    DECLARE CONST DAILY_LATE_FEE DECIMAL(10,2) = 1.00;
    -- Calculate the amount of time the book is overdue using this handy datediff function which returns the
    -- number of days between 2 dates that are provided to it
    SET numDaysLate = DATEDIFF(returnDate, dueDate);
    -- If the book is overdue, then we want to calculate the late fee, otherwise theres no need to calculate
    IF numDaysLate > 0 THEN
        -- latefee is the number of days the book is overdue times the daily late fee
        SET lateFee = numDaysLate * DAILY_LATE_FEE; -- Adjust the late fee calculation as needed
    ELSE
        -- if we get here, the book is not overdue and thus has no late fee
        SET lateFee = 0;
    END IF;
    -- return the late fee
    RETURN lateFee;
END;
