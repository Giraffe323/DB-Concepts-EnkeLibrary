use enkelibrary;

CREATE VIEW book_authorView AS

SELECT
b.bookTitle,
a.authFname,
a.authLname

FROM 
	book_author ba
    
    INNER JOIN book b
    ON ba.BookID = b.BookID
    
    INNER JOIN author a
    ON ba.AuthorID = a.AuthorID
    ;
    
    


