CREATE DATABASE IF NOT EXISTS MovieCatalogue;

USE MovieCatalogue;

CREATE TABLE Movie (
	MovieID int not null auto_increment,
	GenreID int not null,
	DirectorID int,
	RatingID int,
	Title varchar(128) not null,
	ReleaseDate date,
    PRIMARY KEY (MovieID)
);

CREATE TABLE Genre (
	GenreID int not null auto_increment,
	GenreName varchar(30) not null,
    PRIMARY KEY (GenreID)
);

CREATE TABLE Director (
	DirectorID int not null auto_increment,
	FirstName varchar(30) not null,
	LastName varchar(30) not null,
	BirthDate date,
    PRIMARY KEY (DirectorID)
);

CREATE TABLE Rating (
	RatingID int not null auto_increment,
	RatingName varchar(5) not null,
    PRIMARY KEY (RatingID)
);

CREATE TABLE Actor (
	ActorID  int not null auto_increment,
	FirstName varchar(30) not null,
	LastName varchar(30) not null,
	BirthDate date null,
    PRIMARY KEY (ActorID)
);

CREATE TABLE CastMember (
	CastMemberID int not null auto_increment,
	ActorID int not null,
	MovieID int not null,
	Role varchar(50) not null,
    PRIMARY KEY (CastMemberID)
);

ALTER TABLE Movie
 ADD CONSTRAINT fk_MovieGenre FOREIGN KEY (GenreID) REFERENCES Genre
(GenreID), 
ADD CONSTRAINT fk_MovieDirector FOREIGN KEY (DirectorID) REFERENCES Director
(DirectorID),
ADD CONSTRAINT fk_MovieRating FOREIGN KEY (RatingID) REFERENCES Rating
(RatingID);

ALTER TABLE CastMember
 ADD CONSTRAINT fk_CastMemberActor FOREIGN KEY (ActorID) REFERENCES Actor
(ActorID),
ADD CONSTRAINT fk_CastMemberMovie FOREIGN KEY (MovieID) REFERENCES Movie
(MovieID);
