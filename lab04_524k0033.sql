Create Database CompanyDB
use CompanyDB


CREATE TABLE Customers (
Id INT PRIMARY KEY IDENTITY(1,1),
Name NVARCHAR(100),
Email NVARCHAR(100)
);
INSERT INTO Customers (Name, Email) VALUES ('John Doe', 'john.doe@tdtu.com');
INSERT INTO Customers (Name, Email) VALUES ('Jane Smith', 'jane.smith@tdtu.com');
INSERT INTO Customers (Name, Email) VALUES ('Trung Pham', 'trung.pham@tdtu.com');
INSERT INTO Customers (Name, Email) VALUES ('Emily Davis', 'emily.davis@tdtu.com');
INSERT INTO Customers (Name, Email) VALUES ('Thai Pham', 'thai.pham@etdtu.com');


CREATE TABLE Users (
UserID INT PRIMARY KEY IDENTITY(1,1),
Username NVARCHAR(50) NOT NULL,
Password NVARCHAR(50) NOT NULL);

INSERT INTO Users (Username, Password) VALUES ('user1', 'password1');
INSERT INTO Users (Username, Password) VALUES ('user2', 'password2');

CREATE TABLE Suppliers (
    SupplierID INT PRIMARY KEY,
    SupplierName VARCHAR(100),
    ContactName VARCHAR(100),
    Country VARCHAR(50)
);

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    SupplierID INT,
    Price DECIMAL(10, 2),
    FOREIGN KEY (SupplierID) REFERENCES Suppliers(SupplierID)
);


INSERT INTO Suppliers (SupplierID, SupplierName, ContactName, Country) VALUES
(1, 'Acme Corp', 'Alice Smith', 'USA'),
(2, 'Global Tech', 'Bob Johnson', 'UK'),
(3, 'Fresh Foods Ltd', 'Charlie Davis', 'Canada');

INSERT INTO Products (ProductID, ProductName, SupplierID, Price) VALUES
(101, 'Widget A', 1, 19.99),
(102, 'Widget B', 1, 24.50),
(103, 'Tech Gadget', 2, 199.00),
(104, 'Organic Apples', 3, 3.50),
(105, 'Organic Bananas', 3, 2.20);