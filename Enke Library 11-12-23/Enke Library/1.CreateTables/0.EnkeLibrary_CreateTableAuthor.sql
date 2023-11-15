USE enkelibrary;
Create table author
(
AuthorID int NOT NULL AUTO_INCREMENT,
authFname char(30) NOT NULL,
authMname char(30),
authLname char(40) NOT NULL,
authAddress varchar(100),
authCity char(30),
authState char(2),
authZip char(5),
authEmail varchar(50),
authPhone char(10),

CONSTRAINT Auth_PK primary key(AuthorID)
)
;