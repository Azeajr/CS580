CREATE TABLE CAR (
    SerialNumber INT NOT NULL,
    Model VARCHAR(20) NOT NULL,
    Manufacturer VARCHAR(20) NOT NULL,
    Price DECIMAL(6, 2) NOT NULL,
    PRIMARY KEY (SerialNumber)
);
CREATE TABLE OPTION_ (
    SerialNumber INT NOT NULL,
    OptionName VARCHAR(20) NOT NULL,
    Price DECIMAL(6, 2) NOT NULL,
    PRIMARY KEY (SerialNumber, OptionName),
    FOREIGN KEY (SerialNumber) REFERENCES CAR(SerialNumber)
);
CREATE TABLE SALESPERSON (
    SalespersonID INT NOT NULL,
    Name VARCHAR(30) NOT NULL,
    Phone VARCHAR(10) NOT NULL,
    PRIMARY KEY (SalespersonID)
);
CREATE TABLE SALE (
    SalespersonID INT NOT NULL,
    SerialNumber INT NOT NULL,
    Date_ DATE NOT NULL,
    SalePrice DECIMAL(6, 2) NOT NULL,
    PRIMARY KEY (SalespersonID, SerialNumber),
    FOREIGN KEY (SalespersonID) REFERENCES SALESPERSON(SalespersonID),
    FOREIGN KEY (SerialNumber) REFERENCES CAR(SerialNumber)
);