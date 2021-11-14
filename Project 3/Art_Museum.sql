CREATE TABLE ARTIST (
    Name VARCHAR(20) NOT NULL,
    DateBorn DATE,
    DateDied DATE,
    Epoch VARCHAR(20),
    CountryOfOrigin VARCHAR(20),
    MainStyle VARCHAR(20),
    Description VARCHAR(200),
    PRIMARY KEY(Name),
    UNIQUE(Name)
);
CREATE TABLE ART_OBJECT (
    id_no INT NOT NULL,
    Title VARCHAR(50),
    Description VARCHAR(200),
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
    Description VARCHAR(200),
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
INSERT INTO ARTIST (
        Name,
        DateBorn,
        DateDied,
        Epoch,
        CountryOfOrigin,
        MainStyle,
        Description
    )
VALUES (
        'Monet',
        '1840-11-14',
        '1926-12-05',
        'Modern',
        'France',
        'Impressionism',
        'Monet has been described as "the driving force behind Impressionism"'
    );
INSERT INTO ARTIST (
        Name,
        DateBorn,
        DateDied,
        Epoch,
        CountryOfOrigin,
        MainStyle,
        Description
    )
VALUES (
        'Kapoor',
        '1954-03-12',
        NULL,
        'Renaissance',
        'France',
        'Sculpture',
        'Kapoor is a British Indian sculptor specializing in installation art and conceptual art.'
    );
INSERT INTO ARTIST (
        Name,
        DateBorn,
        DateDied,
        Epoch,
        CountryOfOrigin,
        MainStyle,
        Description
    )
VALUES (
        'Bartholdi',
        '1834-08-02',
        '1904-10-04',
        'Renaissance',
        'France',
        'Sculpture',
        'Bartholdi was best known for designing the Statue of Liberty.'
    );
INSERT INTO ARTIST (
        Name,
        DateBorn,
        DateDied,
        Epoch,
        CountryOfOrigin,
        MainStyle,
        Description
    )
VALUES (
        'Michelangelo',
        '1475-03-06',
        '1564-02-18',
        'Renaissance',
        'Italy',
        'Sculpture',
        'Michealangelo is often considered a contender for the title of the archetypal Renaissance man.'
    );
INSERT INTO ARTIST (
        Name,
        DateBorn,
        DateDied,
        Epoch,
        CountryOfOrigin,
        MainStyle,
        Description
    )
VALUES (
        'Dali',
        '1904-05-11',
        '1989-01-23',
        'Modern',
        'Spain',
        'Surrealism',
        'Dali was renowned for his technical skill, precise craftsmanship, and the striking and bizarre images in his work.'
    );
INSERT INTO ARTIST (Name, CountryOfOrigin)
VALUES ('Johnson', 'Canada');
INSERT INTO ARTIST (Name, CountryOfOrigin)
VALUES ('Picaso', 'Spain');
INSERT INTO ARTIST (Name, CountryOfOrigin)
VALUES ('Rembrandt', 'Dutch');
INSERT INTO ARTIST (
        Name,
        DateBorn,
        DateDied,
        Epoch,
        CountryOfOrigin,
        MainStyle,
        Description
    )
VALUES (
        'Zea',
        '1981-08-09',
        NULL,
        'Contemporary',
        'Puerto Rico',
        'Pop Art',
        'Antonio still likes to draw his stick figures.'
    );
INSERT INTO ARTIST (
        Name,
        DateBorn,
        DateDied,
        Epoch,
        CountryOfOrigin,
        MainStyle,
        Description
    )
VALUES (
        'Kahlo',
        '1907-07-06',
        '1954-07-13',
        'Modern',
        'Mexico',
        'Surrealism',
        'Kahlo has been described as a surrealist or magical realist.'
    );
INSERT INTO ARTIST (
        Name,
        DateBorn,
        DateDied,
        Epoch,
        CountryOfOrigin,
        MainStyle,
        Description
    )
VALUES (
        'Bonner',
        '1643-01-01',
        '1726-01-01',
        'Renaissance',
        'England',
        'Map',
        'Bonner was a captain, navigator, and shipwright.'
    );
INSERT INTO ART_OBJECT (id_no, Title, Description, Year, Artist)
VALUES(
        1,
        'Haystacks',
        'Haystacks is the common English title for a series of impressionist paintings by Claude Monet.',
        1890,
        'Monet'
    );
INSERT INTO ART_OBJECT (id_no, Title, Description, Year, Artist)
VALUES(
        2,
        'Statue of Liberty',
        'The Statue of Liberty is a colossal neoclassical sculpture on Liberty Island.',
        1886,
        'Bartholdi'
    );
INSERT INTO ART_OBJECT (id_no, Title, Description, Year, Artist)
VALUES(
        3,
        'David',
        'David is a masterpiece of Renaissance sculpture.',
        1501,
        'Michelangelo'
    );
INSERT INTO ART_OBJECT (id_no, Title, Description, Year, Artist)
VALUES(
        4,
        'Cloud Gate',
        'Cloud Gate is a public shiny kidney bean-shaped sculpture.',
        2006,
        'Kapoor'
    );
INSERT INTO ART_OBJECT (id_no, Title, Description, Year, Artist)
VALUES(
        5,
        'The Town of Boston in New England',
        'A wealth of information about pre-Revolutionary Boston is available through Bonners map.',
        1722,
        'Bonner'
    );

INSERT INTO ART_OBJECT (id_no, Title, Year, Artist)
VALUES(
        6,
        'Sistine Chapel',
        1473,
        'Michelangelo'
    );

INSERT INTO ART_OBJECT (id_no, Title, Year, Artist)
VALUES(
        7,
        'The two fridas',
        1939,
        'Kahlo'
    );

INSERT INTO ART_OBJECT (id_no, Title, Year, Artist)
VALUES(
        8,
        'The Persistence of Memory',
        1931,
        'Dali'
    );
INSERT INTO ART_OBJECT (id_no, Title, Year, Artist)
VALUES(
        9,
        'The Disintegration of the Persistence of Memory',
        1952,
        'Dali'
    );
INSERT INTO PAINTING (id_no, Style, PaintType, DrawnOn)
VALUES(6, 'Romanticism', 'Fresco', 'Plaster');
INSERT INTO PAINTING (id_no, Style, PaintType, DrawnOn)
VALUES(7, 'Modern', 'Oil', 'Canvas');
INSERT INTO PAINTING (id_no, Style, PaintType, DrawnOn)
VALUES(8, 'Modern', 'Oil', 'Canvas');
INSERT INTO PAINTING (id_no, Style, PaintType, DrawnOn)
VALUES(9, 'Modern', 'Oil', 'Canvas');
INSERT INTO PAINTING (id_no, Style, PaintType, DrawnOn)
VALUES(1, 'Impressionism', 'Oil', 'Canvas');
INSERT INTO SCULPTURE (id_no, Style, Weight, Height, Material)
VALUES(4, 'Polishing', 220000.00, 33.00, 'Steel');
INSERT INTO STATUE (id_no, Style, Weight, Height, Material)
VALUES(2, 'Casting', 450000.00, 151.08, 'Copper');
INSERT INTO STATUE (id_no, Style, Weight, Height, Material)
VALUES(3, 'Carving', 12478.00, 17.00, 'Marbel');
INSERT INTO OTHER (id_no, Style)
VALUES(5, 'Map');
INSERT INTO COLLECTIONS (
        Name,
        Type,
        Description,
        Address,
        Phone,
        ContactPerson,
        id_no
    )
VALUES();
INSERT INTO BORROWED (Collection, DateBorrowed, DateReturned)
VALUES();
INSERT INTO PERMANENT_COLLECTION (Collection, DateAquired, Status, Cost)
VALUES();
INSERT INTO EXHIBITIONS (Name, StartDate, EndDate)
VALUES();
INSERT INTO EXHIBITS (id_no, Name)
VALUES();