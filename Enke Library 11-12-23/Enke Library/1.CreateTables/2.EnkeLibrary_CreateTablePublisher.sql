USE enkelibrary;
create table Publisher
(
PublisherID int NOT NULL AUTO_INCREMENT,
pubName char(60) NOT NULL,
pubAddress varchar(100),
pubCity char(30),
pubState char(2),
pubZip char(5),
pubContactFname char(30) NOT NULL,
pubContactMname char(30),
pubContactLname char(30) NOT NULL,
pubEmail varchar(50) NOT NULL,
pubPhone char(10) NOT NULL,

CONSTRAINT Pub_PK primary key(PublisherID)
)
;