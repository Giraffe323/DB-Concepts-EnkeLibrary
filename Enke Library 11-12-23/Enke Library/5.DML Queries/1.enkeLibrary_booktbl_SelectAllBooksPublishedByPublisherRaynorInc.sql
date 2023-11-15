USE enkelibrary;

SELECT bookTitle, bookISBN, bookPublishDate, bookPublisherID FROM book
WHERE book.bookPublisherID = 6
;