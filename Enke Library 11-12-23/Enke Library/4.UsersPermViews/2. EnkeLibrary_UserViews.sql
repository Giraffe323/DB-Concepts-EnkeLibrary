use enkelibrary;

CREATE VIEW book_authorView AS
SELECT book.bookTitle, author.authFname, author.authLname, publisher.pubName
FROM book, author, book_author, publisher
WHERE book.BookID = book_author.BookID
AND author.AuthorID = book_author.AuthorID
AND book.bookPublisherID = publisher.PublisherID
ORDER BY author.authLname ASC
;