CREATE TABLE ARTIST (
    Name VARCHAR(50) NOT NULL,
    DateBorn DATE,
    DateDied DATE,
    Epoch VARCHAR(50),
    CountryOfOrigin VARCHAR(50),
    MainStyle VARCHAR(50),
    Description VARCHAR(200),
    PRIMARY KEY(Name),
    UNIQUE(Name)
);
CREATE TABLE ART_OBJECT (
    id_no INT NOT NULL,
    Title VARCHAR(100),
    Description VARCHAR(200),
    Year INT,
    Artist VARCHAR(50) NOT NULL,
    PRIMARY KEY(id_no),
    UNIQUE(id_no),
    FOREIGN KEY (Artist) REFERENCES ARTIST(Name)
);
CREATE TABLE PAINTING(
    id_no INT NOT NULL,
    Style VARCHAR(50),
    PaintType VARCHAR(50),
    DrawnOn VARCHAR(50),
    PRIMARY KEY(id_no),
    FOREIGN KEY(id_no) REFERENCES ART_OBJECT(id_no)
);
CREATE TABLE SCULPTURE(
    id_no INT NOT NULL,
    Style VARCHAR(50),
    Weight FLOAT,
    Height FLOAT,
    Material VARCHAR(50),
    PRIMARY KEY(id_no),
    FOREIGN KEY(id_no) REFERENCES ART_OBJECT(id_no)
);
CREATE TABLE STATUE(
    id_no INT NOT NULL,
    Style VARCHAR(50),
    Weight FLOAT,
    Height FLOAT,
    Material VARCHAR(50),
    PRIMARY KEY(id_no),
    FOREIGN KEY(id_no) REFERENCES ART_OBJECT(id_no)
);
CREATE TABLE OTHER(
    id_no INT NOT NULL,
    Style VARCHAR(50),
    Weight FLOAT,
    PRIMARY KEY(id_no),
    FOREIGN KEY(id_no) REFERENCES ART_OBJECT(id_no)
);
CREATE TABLE COLLECTIONS (
    Name VARCHAR(50) NOT NULL,
    Type VARCHAR(50),
    Description VARCHAR(200),
    Address VARCHAR(50),
    Phone VARCHAR(50),
    ContactPerson VARCHAR(50),
    id_no INT NOT NULL,
    PRIMARY KEY(Name, id_no),
    FOREIGN KEY(id_no) REFERENCES ART_OBJECT(id_no)
);
CREATE TABLE BORROWED(
    Collection VARCHAR(50) NOT NULL,
    DateBorrowed DATE,
    DateReturned DATE,
    PRIMARY KEY(Collection),
    FOREIGN KEY (Collection) REFERENCES COLLECTIONS(Name)
);
CREATE TABLE PERMANENT_COLLECTION(
    Collection VARCHAR(50) NOT NULL,
    DateAquired DATE,
    Status VARCHAR(50),
    Cost FLOAT,
    PRIMARY KEY(Collection),
    FOREIGN KEY (Collection) REFERENCES COLLECTIONS(Name)
);
CREATE TABLE EXHIBITIONS(
    Name VARCHAR(50) NOT NULL,
    StartDate DATE,
    EndDate DATE,
    PRIMARY KEY(Name)
);
CREATE TABLE DISPLAYS(
    id_no INT NOT NULL,
    Name VARCHAR(50) NOT NULL,
    PRIMARY KEY(id_no, Name),
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
        'Epoch1',
        'Country1',
        'MainStyle1',
        'Artist1 Description'
    ),
    (
        'Artist2',
        '1776-08-11',
        '1810-03-10',
        'Epoch2',
        'Country2',
        'MainStyle2',
        'Artist2 Description'
    ),
    (
        'Artist3',
        '1981-08-09',
        '2023-04-11',
        'Epoch3',
        'Country3',
        'MainStyle3',
        'Artist3 Description'
    ),
    (
        'Artist4',
        '1982-09-10',
        '2024-05-12',
        'Epoch4',
        'Country4',
        'MainStyle4',
        'Artist4 Description'
    ),
    (
        'Artist5',
        '1983-10-11',
        '2025-06-01',
        'Epoch5',
        'Country5',
        'MainStyle5',
        'Artist5 Description'
    ),
    (
        'Artist6',
        '1984-11-12',
        '2026-07-01',
        'Epoch6',
        'Country6',
        'MainStyle6',
        'Artist6 Description'
    ),
    (
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
    ),
    (
        2,
        'Statue of Liberty',
        'ArtObject2 Description',
        1886,
        'Artist2'
    ),
    (
        3,
        'David',
        'ArtObject3 Description',
        1501,
        'Artist3'
    ),
    (
        4,
        'Cloud Gate',
        'ArtObject4 Description',
        2006,
        'Artist4'
    ),
    (
        5,
        'The Town of Boston in New England',
        'ArtObject5 Description',
        1722,
        'Artist5'
    ),
    (
        6,
        'Sistine Chapel',
        'ArtObject6 Description',
        1473,
        'Artist6'
    ),
    (
        7,
        'The two fridas',
        'ArtObject7 Description',
        1939,
        'Artist7'
    ),
    (
        8,
        'The Persistence of Memory',
        'ArtObject8 Description',
        1931,
        'Monet'
    ),
    (
        9,
        'The Disintegration of the Persistence of Memory',
        'ArtObject9 Description',
        1952,
        'Artist2'
    ),
    (
        10,
        'The Green Wave',
        'ArtObject10 Description',
        1866,
        'Monet'
    ),
    (
        11,
        'Mona Lisa',
        'ArtObject11 Description',
        1808,
        'Artist2'
    ),
    (
        12,
        'The Starry Night',
        'ArtObject12 Description',
        1567,
        'Artist3'
    ),
    (
        13,
        'The Last Supper',
        'ArtObject13 Description',
        1902,
        'Artist4'
    ),
    (
        14,
        'The Scream',
        'ArtObject14 Description',
        1911,
        'Artist5'
    ),
    (
        15,
        'The Kiss',
        'ArtObject15 Description',
        1770,
        'Artist6'
    ),
    (
        16,
        'Guernica',
        'ArtObject16 Description',
        1452,
        'Artist7'
    ),
    (
        17,
        'The Birth of Venus',
        'ArtObject17 Description',
        2010,
        'Monet'
    ),
    (
        18,
        'The Last Supper',
        'ArtObject18 Description',
        1902,
        'Artist2'
    ),
    (
        19,
        'Campbells Soup Cans',
        'ArtObject19 Description',
        1962,
        'Artist3'
    ),
    (
        20,
        'Maman',
        'ArtObject20 Description',
        1990,
        'Artist4'
    ),
    (
        21,
        'Autumn Rhythm',
        'ArtObject21 Description',
        1950,
        'Artist5'
    ),
    (
        22,
        'I Still Face You',
        'ArtObject22 Description',
        2015,
        'Artist6'
    ),
    (
        23,
        'The Physical Impossibility of Death in the Mind of Someone Living',
        'ArtObject23 Description',
        1991,
        'Artist7'
    ),
    (
        24,
        'The Girl Who Had Everything',
        'ArtObject24 Description',
        1998,
        'Monet'
    ),
    (
        25,
        'Infinity Mirror Room',
        'ArtObject25 Description',
        1965,
        'Artist2'
    ),
    (
        26,
        'Untitled',
        'ArtObject26 Description',
        1982,
        'Artist3'
    ),
    (
        27,
        'Propped',
        'ArtObject27 Description',
        1992,
        'Artist4'
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
    (3, 'Carving', 12478.00, 17.00, 'Marble'),
    (15, 'Assembled', 200.00, 20.0, 'Wood'),
    (16, 'Assembled', 123000.00, 10.0, 'Steel');
INSERT INTO STATUE (id_no, Style, Weight, Height, Material)
VALUES(2, 'Casting', 450000.00, 151.08, 'Copper'),
    (3, 'Carving', 12478.00, 17.00, 'Marble'),
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
    ),
    (
        'Collection9',
        'Collection9 Type',
        'Collection9 Collection Description',
        5
    ),
    (
        'Collection10',
        'Collection10 Type',
        'Collection10 Collection Description',
        4
    ),
    (
        'Collection11',
        'Collection11 Type',
        'Collection11 Collection Description',
        21
    ),
    (
        'Collection12',
        'Collection12 Type',
        'Collection12 Collection Description',
        5
    );
INSERT INTO BORROWED (Collection, DateBorrowed, DateReturned)
VALUES('Barnes', '2020-01-01', '2025-01-01'),
    ('Noble', '2018-01-01', '2019-01-01'),
    ('Full Stop', '2015-01-01', '2020-01-01'),
    ('Collection9', '2018-01-01', '2019-01-01'),
    ('Collection10', '2018-01-01', '2019-01-01'),
    ('Collection11', '2018-01-01', '2019-01-01'),
    ('Collection12', '2018-01-01', '2019-01-01');
INSERT INTO PERMANENT_COLLECTION (Collection, DateAquired, Status, Cost)
VALUES('Homestyle', '1990-01-01', 'display', 120000.00),
    ('Collection3', '1991-01-01', 'loan', 1000.00),
    ('Collection4', '1996-01-01', 'loan', 140000.00),
    ('Collection5', '1996-01-01', 'loan', 140000.00),
    ('Collection6', '1996-01-01', 'loan', 140000.00),
    ('Collection7', '1996-01-01', 'loan', 140000.00),
    ('Collection8', '1996-01-01', 'loan', 140000.00);
INSERT INTO EXHIBITIONS (Name, StartDate, EndDate)
VALUES('Exhibition1', '1996-01-01', '1997-01-01'),
    ('Exhibition2', '1993-01-01', '1994-01-01'),
    ('Exhibition3', '1994-01-01', '1995-01-01'),
    ('Exhibition4', '1995-01-01', '1996-01-01'),
    ('Exhibition5', '1997-01-01', '1998-01-01'),
    ('Exhibition6', '1999-01-01', '2000-01-01'),
    ('Morning Mist', '1999-01-01', '2003-01-01');
INSERT INTO DISPLAYS (id_no, Name)
VALUES(1, 'Morning Mist'),
    (2, 'Morning Mist'),
    (3, 'Morning Mist'),
    (4, 'Morning Mist'),
    (5, 'Morning Mist'),
    (3, 'Exhibition1'),
    (4, 'Exhibition2'),
    (4, 'Exhibition3'),
    (5, 'Exhibition4'),
    (6, 'Exhibition5'),
    (2, 'Exhibition6'),
    (12, 'Exhibition6'),
    (14, 'Exhibition6');