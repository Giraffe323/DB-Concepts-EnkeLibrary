USE enkelibrary;
create table Genre
(
GenreID int NOT NULL AUTO_INCREMENT,
genName char(30) NOT NULL,
genDesc varchar(100),

CONSTRAINT Gen_PK primary key(GenreID)


)
;