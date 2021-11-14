CREATE TABLE ARTIST (
    Name VARCHAR(20) NOT NULL,
    DateBorn DATE,
    DateDied DATE,
    Epoch VARCHAR(20),
    CountryOfOrigin VARCHAR(20),
    MainStyle VARCHAR(20),
    Description VARCHAR(20),
    PRIMARY KEY(Name),
    UNIQUE(Name)
);
CREATE TABLE ART_OBJECT (
    id_no INT NOT NULL,
    Title VARCHAR(15),
    Description VARCHAR(50),
    Year INT,
    Artist VARCHAR(20) NOT NULL,
    PRIMARY KEY(id_no),
    UNIQUE(id_no),
	FOREIGN KEY (Artist) REFERENCES ARTIST(Name)
);
CREATE TABLE PAINTING(
    id_no INT NOT NULL,
    Style VARCHAR(20),
    PaintType VARCHAR(20),
    DrawnOn VARCHAR(20),
    PRIMARY KEY(id_no),
    FOREIGN KEY(id_no) REFERENCES ART_OBJECT(id_no)
);
CREATE TABLE SCULPTURE(
    id_no INT NOT NULL,
    Style VARCHAR(20),
    Weight FLOAT,
    Height FLOAT,
    Material VARCHAR(20),
    PRIMARY KEY(id_no),
    FOREIGN KEY(id_no) REFERENCES ART_OBJECT(id_no)
);
CREATE TABLE STATUE(
    id_no INT NOT NULL,
    Style VARCHAR(20),
    Weight FLOAT,
    Height FLOAT,
    Material VARCHAR(20),
    PRIMARY KEY(id_no),
    FOREIGN KEY(id_no) REFERENCES ART_OBJECT(id_no)
);
CREATE TABLE OTHER(
    id_no INT NOT NULL,
    Style VARCHAR(20),
    Weight FLOAT,
    PRIMARY KEY(id_no),
    FOREIGN KEY(id_no) REFERENCES ART_OBJECT(id_no)
);
CREATE TABLE COLLECTIONS (
    Name VARCHAR(20) NOT NULL,
    Type VARCHAR(20),
    Description VARCHAR(20),
    Address VARCHAR(20),
    Phone VARCHAR(20),
    ContactPerson VARCHAR(20),
    id_no INT NOT NULL,
    PRIMARY KEY(Name),
    FOREIGN KEY(id_no) REFERENCES ART_OBJECT(id_no)
);

CREATE TABLE BORROWED(
    Collection VARCHAR(20) NOT NULL,
    DateBorrowed DATE,
    DateReturned DATE,
    PRIMARY KEY(Collection),
    FOREIGN KEY (Collection) REFERENCES COLLECTIONS(Name)
);
CREATE TABLE PERMANENT_COLLECTION(
    Collection VARCHAR(20) NOT NULL,
    DateAquired DATE,
    Status VARCHAR(20),
    Cost FLOAT,
    PRIMARY KEY(Collection),
    FOREIGN KEY (Collection) REFERENCES COLLECTIONS(Name)
);
CREATE TABLE EXHIBITIONS(
    Name VARCHAR(20) NOT NULL,
    StartDate DATE,
    EndDate DATE,
    PRIMARY KEY(Name)
);
CREATE TABLE EXHIBITS(
    id_no INT NOT NULL,
    Name VARCHAR(20) NOT NULL,
    PRIMARY KEY(id_no),
    FOREIGN KEY(id_no) REFERENCES ART_OBJECT(id_no),
    FOREIGN KEY(Name) REFERENCES EXHIBITIONS(Name)
);


INSERT INTO ARTIST
    ("Monet",);

INSERT INTO ART_OBJECT
    (id_no,Title,Year,Artist)
    ();

INSERT INTO PAINTING
    (id_no, Style, PaintType,DrawnOn)
    ();

INSERT INTO SCULPTURE
    (id_no, Weight, Material)
    ();

INSERT INTO STATUE
    (id_no)
    ();

INSERT INTO OTHER
    (id_no)
    ();

INSERT INTO COLLECTIONS
    (Name)
    ();

INSERT INTO BORROWED
    (Collection)
    ();

INSERT INTO PERMANENT_COLLECTION
    (Collection)
    ();

INSERT INTO EXHIBITIONS
    (Name)
    ();

INSERT INTO EXHIBITS
    (id_no, Name)
    ();

