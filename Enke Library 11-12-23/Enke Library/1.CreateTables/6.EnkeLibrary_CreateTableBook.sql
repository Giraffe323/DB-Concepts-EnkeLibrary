use enkelibrary;
CREATE TABLE Book(
BookID int NOT NULL AUTO_INCREMENT,
bookTitle varchar(100) NOT NULL,
bookISBN char(13) NOT NULL,
bookPublishDate date NOT NULL,
bookPublisherID int NOT NULL,

CONSTRAINT Book_PK PRIMARY KEY (BookID),
FOREIGN KEY (bookPublisherID) REFERENCES publisher(PublisherID)

)
;