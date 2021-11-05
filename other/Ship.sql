CREATE DATABASE SHIP_TRACKING;
CREATE TABLE SHIP(
    Sname           VARCHAR(20)     NOT NULL,
    Owner           VARCHAR(20)     NOT NULL,
    Type            VARCHAR(20)     NOT NULL,
    Home_Port       VARCHAR(20)     NOT NULL,
    Ship_At_Port    VARCHAR(20)     NOT NULL,
    PRIMARY KEY(Sname)
);

CREATE TABLE SHIP_TYPE(
    Type            VARCHAR(20)     NOT NULL,
    Tonnage         INT(20)         NOT NULL,
    Hull            VARCHAR(20)     NOT NULL,
    PRIMARY KEY(Type)
);

CREATE TABLE PORT(
    Pname           VARCHAR(20)     NOT NULL,
    SC_Name         VARCHAR(20)     NOT NULL,
    SOL_Name        VARCHAR(20)     NOT NULL,
    PRIMARY KEY(Pname, SC_Name)
);

CREATE TABLE PORT_VISIT(
    Sname           VARCHAR(20)     NOT NULL,
    Pname           VARCHAR(20)     NOT NULL,
    SC_Name         VARCHAR(20)     NOT NULL,
    SOL_Name        VARCHAR(20)     NOT NULL,
    PRIMARY KEY(Pname, SC_Name)
);