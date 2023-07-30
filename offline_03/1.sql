DROP TABLE artist CASCADE CONSTRAINTS;
DROP TABLE album  CASCADE CONSTRAINTS;
DROP TABLE track  CASCADE CONSTRAINTS;

CREATE TABLE artist (
    artistID INT PRIMARY KEY,
    name VARCHAR2(20),
    age INT,
    gender CHAR(1)
);

CREATE TABLE album (
    albumID INT PRIMARY KEY,
    albumTitle VARCHAR2(20),
    artistID INT,
    certification VARCHAR2(20),
    numberOfTracks INT,
    CONSTRAINT fk_artist FOREIGN KEY (artistID)
        REFERENCES artist (artistID)
);

CREATE TABLE track (
    trackID INT PRIMARY KEY,
    trackTitle VARCHAR2(20),
    genre VARCHAR2(20),
    albumID INT,
    released DATE,
    CONSTRAINT fk_album FOREIGN KEY (albumID)
        REFERENCES album (albumID)
);

INSERT INTO artist VALUES (1, 'A', 32, 'M');
INSERT INTO artist VALUES (2, 'B', 46, 'F');
INSERT INTO artist VALUES (3, 'C', 48, 'M');
INSERT INTO artist VALUES (4, 'D', 25, 'F');
INSERT INTO artist VALUES (5, 'E', 36, 'M');
INSERT INTO artist VALUES (6, 'F', 19, 'F');

INSERT INTO album VALUES (1, 'DCBA', 2, 'GOLD', 7);
INSERT INTO album VALUES (2, 'HGFE', 5, 'PLATINUM', 14);
INSERT INTO album VALUES (3, 'LKJI', 3, 'SILVER', 12);
INSERT INTO album VALUES (4, 'PONM', 1, 'GOLD', 10);
INSERT INTO album VALUES (5, 'TSRQ', 2, 'PLATINUM', 9);

INSERT INTO track VALUES (1, 'title1', 'rock', 1, DATE '1992-06-22');
INSERT INTO track VALUES (2, 'title2', 'rock', 1, DATE '1992-07-12');
INSERT INTO track VALUES (3, 'title3', 'country', 2, DATE '1997-03-25');
INSERT INTO track VALUES (4, 'title4', 'pop', 3, DATE '2010-06-26');
INSERT INTO track VALUES (5, 'title5', 'pop', 5, DATE '1982-05-22');
INSERT INTO track VALUES (6, 'title6', 'country', 4, DATE '1972-02-02');
INSERT INTO track VALUES (7, 'title7', 'rock', 1, DATE '1992-07-12');
INSERT INTO track VALUES (8, 'title8', 'country', 2, DATE '1997-03-25');

COMMIT;

SELECT * FROM artist;
SELECT * FROM track;
SELECT * FROM album;