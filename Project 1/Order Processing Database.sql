CREATE TABLE CUSTOMER
    (CustNum        INT             NOT NULL,
     CustName       VARCHAR(30)     NOT NULL,
     City           VARCHAR(20)     NOT NULL,
     PRIMARY KEY (CustNum));

CREATE TABLE ORDER_
    (OrderNum        INT            NOT NULL,
     OrdDate         DATE           NOT NULL,
     CustNum         INT            NOT NULL,
     OrdAmount       DECIMAL(6,2)   NOT NULL,
    PRIMARY KEY (OrderNum),
    FOREIGN KEY (CustNum) REFERENCES CUSTOMER(CustNum));

CREATE TABLE ITEM
    (ItemNum         INT            NOT NULL,
     UnitPrice       DECIMAL(6,2)   NOT NULL,
     PRIMARY KEY (ItemNum));

CREATE TABLE ORDER_ITEM
    (OrderNum        INT            NOT NULL,
     ItemNum         INT            NOT NULL,
     Quantity        INT            NOT NULL,
    PRIMARY KEY (OrderNum, ItemNum),
    FOREIGN KEY (OrderNum) REFERENCES ORDER_(OrderNum),
    FOREIGN KEY (ItemNum) REFERENCES ITEM(ItemNum));
     
CREATE TABLE WAREHOUSE
    (WarehouseNum    INT            NOT NULL,
     City            VARCHAR(20)    NOT NULL,
     PRIMARY KEY (WarehouseNum));
     
CREATE TABLE SHIPMENT
    (OrderNum        INT            NOT NULL,
     WarehouseNum    INT            NOT NULL,
     ShipDate        DATE           NOT NULL,
    PRIMARY KEY (OrderNum,WarehouseNum),
    FOREIGN KEY (OrderNum) REFERENCES ORDER_(OrderNum),
    FOREIGN KEY (WarehouseNum) REFERENCES WAREHOUSE(WarehouseNum));
     
