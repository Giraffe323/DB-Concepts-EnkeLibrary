use enkelibrary;
SELECT COUNT(CheckInOut_DetailID) AS NumberOfTimesCatcherInTheRyeHasBeenCheckedOut
FROM CheckInOut_Detail
WHERE CheckInOut_Detail.InventoryID = 7