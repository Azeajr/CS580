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
        'Artist1',
        '1840-11-14',
        '1926-12-05',
        'Epoch1',
        'Country1',
        'MainStyle1',
        'Artist1 Description'
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
        'Artist2',
        '1776-08-11',
        '1810-03-10',
        'Epoch2',
        'Country2',
        'MainStyle2',
        'Artist2 Description'
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
        'Artist3',
        '1981-08-09',
        '2023-04-11',
        'Epoch3',
        'Country3',
        'MainStyle3',
        'Artist3 Description'
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
        'Artist4',
        '1982-09-10',
        '2024-05-12',
        'Epoch4',
        'Country4',
        'MainStyle4',
        'Artist4 Description'
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
        'Artist5',
        '1983-10-11',
        '2025-06-01',
        'Epoch5',
        'Country5',
        'MainStyle5',
        'Artist5 Description'
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
        'Artist6',
        '1984-11-12',
        '2026-07-01',
        'Epoch6',
        'Country6',
        'MainStyle6',
        'Artist6 Description'
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
        'Artist7',
        '1986-02-02',
        '2028-09-03',
        'Epoch7',
        'Country7',
        'MainStyle7',
        'Artist7 Description'
    );
INSERT INTO ART_OBJECT (id_no, Title, Description, Year, Artist)
VALUES(
        1,
        'Haystacks',
        'ArtObject1 Description',
        1890,
        'Monet'
    );
INSERT INTO ART_OBJECT (id_no, Title, Description, Year, Artist)
VALUES(
        2,
        'Statue of Liberty',
        'ArtObject2 Description',
        1886,
        'Artist2'
    );
INSERT INTO ART_OBJECT (id_no, Title, Description, Year, Artist)
VALUES(
        3,
        'David',
        'ArtObject3 Description',
        1501,
        'Artist3'
    );
INSERT INTO ART_OBJECT (id_no, Title, Description, Year, Artist)
VALUES(
        4,
        'Cloud Gate',
        'ArtObject4 Description',
        2006,
        'Artist4'
    );
INSERT INTO ART_OBJECT (id_no, Title, Description, Year, Artist)
VALUES(
        5,
        'The Town of Boston in New England',
        'ArtObject5 Description',
        1722,
        'Artist5'
    );
INSERT INTO ART_OBJECT (id_no, Title, Description, Year, Artist)
VALUES(
        6,
        'Sistine Chapel',
        'ArtObject6 Description',
        1473,
        'Artist6'
    );
INSERT INTO ART_OBJECT (id_no, Title, Description, Year, Artist)
VALUES(
        7,
        'The two fridas',
        'ArtObject7 Description',
        1939,
        'Artist7'
    );
INSERT INTO ART_OBJECT (id_no, Title, Description, Year, Artist)
VALUES(
        8,
        'The Persistence of Memory',
        'ArtObject8 Description',
        1931,
        'Artist1'
    );
INSERT INTO ART_OBJECT (id_no, Title, Description, Year, Artist)
VALUES(
        9,
        'The Disintegration of the Persistence of Memory',
        'ArtObject9 Description',
        1952,
        'Artist2'
    );
INSERT INTO PAINTING (id_no, Style, PaintType, DrawnOn)
VALUES(6, 'Romanticism', 'Fresco', 'Plaster'),
    (7, 'Modern', 'oil', 'Canvas'),
    (8, 'Modern', 'oil', 'Canvas'),
    (9, 'Modern', 'oil', 'Canvas'),
    (1, 'Impressionism', 'oil', 'Canvas'),
    (10, 'Classical', 'oil', 'Canvas'),
    (11, 'Contemporary', 'watercolor', 'Canvas');
INSERT INTO SCULPTURE (id_no, Style, Weight, Height, Material)
VALUES(4, 'Polishing', 220000.00, 33.00, 'Steel'),
    (12, 'Relief', 140000.00, 12.50, 'Stone'),
    (13, 'Relief', 100000.00, 18.50, 'Stone'),
    (14, 'Assembled', 8000.00, 18.50, 'Steel'),
    (3, 'Carving', 12478.00, 17.00, 'Marbel'),
    (15, 'Assembled', 200.00, 20.0, 'Wood'),
    (16, 'Assembled', 123000.00, 10.0, 'Steel');
INSERT INTO STATUE (id_no, Style, Weight, Height, Material)
VALUES(2, 'Casting', 450000.00, 151.08, 'Copper'),
    (3, 'Carving', 12478.00, 17.00, 'Marbel'),
    (17, 'Casting', 230000.00, 180.0, 'Copper'),
    (18, 'Carving', 180.00, 100.00, 'Wood'),
    (19, 'Casting', 800000.00, 107.00, 'Bronze'),
    (20, 'Casting', 300000.00, 103.00, 'Bronze'),
    (21, 'Casting', 400000.00, 220.00, 'Bronze');
INSERT INTO OTHER (id_no, Style)
VALUES(5, 'Map'),
    (22, 'Jewlery'),
    (23, 'Armour'),
    (24, 'Map'),
    (25, 'Jewlery'),
    (26, 'Armour'),
    (27, 'Map');
INSERT INTO COLLECTIONS (
        Name,
        Type,
        Description,
        id_no
    )
VALUES(
        'Barnes',
        'American',
        'Barnes Collection Description',
        1
    ),
    (
        'Barnes',
        'American',
        'Barnes Collection Description',
        2
    ),
    (
        'Barnes',
        'American',
        'Barnes Collection Description',
        3
    ),
    (
        'Barnes',
        'American',
        'Barnes Collection Description',
        4
    ),
    (
        'Barnes',
        'American',
        'Barnes Collection Description',
        5
    ),
    (
        'Barnes',
        'American',
        'Barnes Collection Description',
        6
    ),
    (
        'Noble',
        'Clasical',
        'Noble Collection Description',
        3
    ),
    (
        'Full Stop',
        'Kitchen Sink',
        'Full Stop Collection Description',
        7
    ),
    (
        'Full Stop',
        'Kitchen Sink',
        'Full Stop Collection Description',
        8
    ),
    (
        'Full Stop',
        'Kitchen Sink',
        'Full Stop Collection Description',
        9
    ),
    (
        'Full Stop',
        'Kitchen Sink',
        'Full Stop Collection Description',
        4
    ),
    (
        'Homestyle',
        'Impressionists',
        'Homestyle Collection Description',
        12
    ),
    (
        'Homestyle',
        'Impressionists',
        'Homestyle Collection Description',
        13
    ),
    (
        'Homestyle',
        'Impressionists',
        'Homestyle Collection Description',
        14
    ),
    (
        'Homestyle',
        'Impressionists',
        'Homestyle Collection Description',
        15
    ),
    (
        'Homestyle',
        'Impressionists',
        'Homestyle Collection Description',
        16
    ),
    (
        'Homestyle',
        'Impressionists',
        'Homestyle Collection Description',
        17
    ),
    (
        'Collection3',
        'Collection3 Type',
        'Collection3 Collection Description',
        22
    ),
    (
        'Collection4',
        'Collection4 Type',
        'Collection4 Collection Description',
        23
    ),
    (
        'Collection5',
        'Collection5 Type',
        'Collection5 Collection Description',
        25
    ),
    (
        'Collection6',
        'Collection6 Type',
        'Collection6 Collection Description',
        26
    ),
    (
        'Collection7',
        'Collection7 Type',
        'Collection7 Collection Description',
        27
    ),
    (
        'Collection8',
        'Collection8 Type',
        'Collection8 Collection Description',
        21
    );
INSERT INTO BORROWED (Collection, DateBorrowed, DateReturned)
VALUES('Barnes', '2020-01-01', '2025-01-01'),
    ('Barnes', '2001-01-01', '2007-01-01'),
    ('Barnes', '1993-01-01', '1994-01-01'),
    ('Barnes', '1996-01-01', '1997-01-01'),
    ('Noble', '2018-01-01', '2019-01-01'),
    ('Noble', '1990-01-01', '1991-01-01'),
    ('Noble', '2001-01-01', '2002-01-01');
INSERT INTO PERMANENT_COLLECTION (Collection, DateAquired, Status, Cost)
VALUES('Homestyle', '1990-01-01', 'display', 120000.00),
    ('Collection 3', '1991-01-01', 'loan', 1000.00),
    ('Collection 4', '1996-01-01', 'loan', 140000.00),
    ('Collection 5', '1996-01-01', 'loan', 140000.00),
    ('Collection 6', '1996-01-01', 'loan', 140000.00),
    ('Collection 7', '1996-01-01', 'loan', 140000.00),
    ('Collection 8', '1996-01-01', 'loan', 140000.00);
INSERT INTO EXHIBITIONS (Name, StartDate, EndDate)
VALUES('Exhibition1', '1996-01-01', '1997-01-01'),
    ('Exhibition2', '1993-01-01', '1994-01-01'),
    ('Exhibition3', '1994-01-01', '1995-01-01'),
    ('Exhibition4', '1995-01-01', '1996-01-01'),
    ('Exhibition5', '1997-01-01', '1998-01-01'),
    ('Exhibition6', '1999-01-01', '2000-01-01'),
    ('Monrning Mist', '1999-01-01', '2003-01-01');
INSERT INTO EXHIBITS (id_no, Name)
VALUES(1, 'Monrning Mist'),
(2, 'Monrning Mist'),
(3, 'Monrning Mist'),
(4, 'Monrning Mist'),
(5, 'Monrning Mist'),
(3, 'Exhibition1'),
(4, 'Exhibition2'),
(4, 'Exhibition3'),
(5, 'Exhibition4'),
(6, 'Exhibition5'),
(2, 'Exhibition6'),
(2, 'Exhibition6'),
(2, 'Exhibition6');