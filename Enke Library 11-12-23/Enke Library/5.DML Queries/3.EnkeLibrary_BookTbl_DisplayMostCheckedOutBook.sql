SELECT book.bookTitle, count(CheckInOut_DetailID) as TimesCheckedOut
FROM book, CheckInOut_Detail, inventory
WHERE book.BookID = inventory.BookID
GROUP BY CheckInOut_DetailID
ORDER BY TimesCheckedOut DESC
LIMIT 1;