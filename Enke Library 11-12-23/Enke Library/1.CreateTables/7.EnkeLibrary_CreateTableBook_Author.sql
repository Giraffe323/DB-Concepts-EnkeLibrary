use enkelibrary;
CREATE TABLE Book_Author(
BookAuthorID int NOT NULL AUTO_INCREMENT,
BookID int NOT NULL,
AuthorID int NOT NULL,

CONSTRAINT Book_Author_PK PRIMARY KEY (BookAuthorID),
CONSTRAINT BookAuth_FK FOREIGN KEY (BookID) REFERENCES Book(BookID),
CONSTRAINT Author_FK FOREIGN KEY (AuthorID) REFERENCES Author(AuthorID)
)
;