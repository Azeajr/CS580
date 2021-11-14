CREATE TABLE ARTIST(				
	Name	VARCHAR(15)  NOT NULL,
	Date_Born	DATE ,
	Date_Died	DATE,
	Country_of_Origin	VARCHAR(15),
	Epoch	VARCHAR(15),
	Main_Style	VARCHAR(15)	NOT NULL,
	Description 	VARCHAR(50),
	PRIMARY KEY (Main_Style),
	UNIQUE (Name));
	
	
	
CREATE TABLE ART_OBJECT(				
	Id_no	  INT 	NOT NULL,
	Title 	VARCHAR(15), 
	Description 	VARCHAR(50),
	Artist 	VARCHAR(15) 		NOT NULL,
	Year 	INT,   
	PRIMARY KEY (Id_no),
	UNIQUE (Id_no),
	FOREIGN KEY (Artist) REFERENCES ARTIST(Name));
	
	
CREATE TABLE PAINTING(				
	Paint_type 	VARCHAR(15)	NOT NULL, 
	Material 	VARCHAR(15),
	Style 	VARCHAR(15) NOT NULL,
	Id_no	  INT NOT NULL,
	FOREIGN KEY (Style) REFERENCES ARTIST(Main_Style),
	FOREIGN KEY (Id_no) REFERENCES ART_OBJECT(Id_no));
	
	
CREATE TABLE SCULPTURE(				
	Material 	VARCHAR(15), 
	Height 	FLOAT,
	Weight 	FLOAT,
	Style 	VARCHAR(15) NOT NULL,
	Id_no	  INT NOT NULL,
	FOREIGN KEY (Style) REFERENCES ARTIST(Main_Style),
	FOREIGN KEY (Id_no) REFERENCES ART_OBJECT(Id_no));
	
	
CREATE TABLE STATUE(				
	Material 	VARCHAR(15), 
	Height 	FLOAT,
	Weight 	FLOAT,
	Style 	VARCHAR(15) NOT NULL,
	Id_no	  INT NOT NULL,
	FOREIGN KEY (Style) REFERENCES ARTIST(Main_Style),
	FOREIGN KEY (Id_no) REFERENCES ART_OBJECT(Id_no));
	
	
CREATE TABLE OTHER(				
	Type VARCHAR(15),
	Style 	VARCHAR(15) NOT NULL,
	Id_no	  INT NOT NULL ,
	FOREIGN KEY (Style) REFERENCES ARTIST(Main_Style),
	FOREIGN KEY (Id_no) REFERENCES ART_OBJECT(Id_no));
	
	
CREATE TABLE PERMANENT_COLLECTION(				
	
	Date_acquired  DATE,
	Status	VARCHAR(15),
	Cost	FLOAT,
	Name	VARCHAR(15),
	Id_no	  INT  NOT NULL,
	FOREIGN KEY (Id_no) REFERENCES ART_OBJECT(Id_no));
	
	
CREATE TABLE BORROWED(				
	Borrowed_from_collection	VARCHAR(15),
	Date_borrowed  DATE,
	Date_returned	DATE,
	Id_no	  INT NOT NULL ,
	FOREIGN KEY (Id_no) REFERENCES ART_OBJECT(Id_no));
	
	
CREATE TABLE COLLECTIONS(				
	Name	VARCHAR(15),
	Type	VARCHAR(15),
	Description	VARCHAR(50)	,
	Contact_person	VARCHAR(15),
	Phone	VARCHAR(15),
	Address	VARCHAR(15),
	UNIQUE (Name),
	PRIMARY KEY (Name));
	

CREATE TABLE EXHIBITIONS(				
	Name	VARCHAR(15) NOT NULL,
	Start_date  DATE,
	End_date	DATE,
	Id_no	  INT NOT NULL ,
	PRIMARY KEY (Name),
	FOREIGN KEY (Id_no) REFERENCES ART_OBJECT(Id_no));
	
	
CREATE TABLE DISPLAY(
    id_no INT NOT NULL,
    Name VARCHAR(15) NOT NULL,
    PRIMARY KEY(id_no),
    FOREIGN KEY(id_no) REFERENCES ART_OBJECT(id_no),
    FOREIGN KEY(Name) REFERENCES EXHIBITIONS(Name)
);