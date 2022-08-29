SELECT * FROM PERSONS:

CREATE TABLE Orders
(
    OrderID int Primary Key,
    OrderNumber int NOT NULL,
    PersonsID INT FOREIGN KEY REFERENCES Persons(ID)
)

CREATE TABLE Orders
(
    OrderID int PRIMARY Key,
    OrderNumber int NOT NULL,
    PersonID INT,
    CONSTRAINT FK_Orders_PersonID FOREIGN KEY (PersonID) REFERENCES Persons(ID)
)

ALTER TABLE ORDERS ADD FOREIGN KEY (PersonID) REFERENCES Persons(ID)

ALTER TABLE ORDERS ADD CONSTRAINT FK_Orders_personID FOREIGN KEY (PersonID) REFERENCES Persons(ID)

ALTER TABLE ORDERS DROP CONSTRAINT FK_Orders_PersonID;

create table Orders(
    OrdersID int IDENTITY PRIMARY Key,
    OrderNumber INT NOT NULL,
    PersonID INT
)

DROP TABLE Orders
create table Orders(
    OrdersID int IDENTITY PRIMARY Key,
    OrderNumber INT NOT NULL,
    PersonID INT
)
select * from Orders AS o
INSERT INTO Orders
(
    OrderNumber,
    PersonId
)
VALUES
(
    110,
    22
)

CREATE TABLE [dbo].[ABC] (
    [ID]        INT          NOT NULL,
    [Name]      VARCHAR (50) NOT NULL,
    [PanNumber] VARCHAR (50) NULL
);

CREATE TABLE  New_Table(
    ID INT IDENTITY PRIMARY KEY,
    FD INT NULL,
    SD INT NULL,
    TD AS FD + SD

)

INSERT INTO New_Table(
    FD,
    SD
)
VALUES(
    1,
    2
)
SELECT * FROM New_Table

