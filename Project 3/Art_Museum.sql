CREATE TABLE ART_OBJECT
    (id_no      INT             NOT NULL,
    Title       VARCHAR(20)     NOT NULL,
    Description VARCHAR(20)     NOT NULL,
    Year        INT             NOT NULL,
    Origin      VARCHAR(20)     NOT NULL,
    Epoch       VARCHAR(20)     NOT NULL,
    Artist      VARCHAR(20)     NOT NULL,
    PRIMARY KEY(id_no));

CREATE TABLE ARTIST
    (Name               VARCHAR(20)     NOT NULL,
    DateBorn            DATE            NOT NULL,
    DateDied            DATE            NOT NULL,
    Epoch               VARCHAR(20)     NOT NULL,
    Country_of_Origin   VARCHAR(20)     NOT NULL,
    MainStyle           VARCHAR(20)     NOT NULL,
    Description         VARCHAR(20)     NOT NULL,
    PRIMARY KEY(Name));

CREATE TABLE COLLECTIONS