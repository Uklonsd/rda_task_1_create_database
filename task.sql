# Write your SQL code for the database creation here. Good luck!
CREATE DATABASE ShopDB;
USE ShopDB;

CREATE TABLE Products (
    ProductID INT AUTO_INCREMENT,
    Name VARCHAR(50),
    Description VARCHAR(100),
    Price INT,
    WarehouseAmount INT,
    PRIMARY KEY (ProductID)
);
DESCRIBE Products;
SELECT * FROM Products;

CREATE TABLE Customers (
    CustomerID INT AUTO_INCREMENT,
    FirstName VARCHAR(50),
	LastName VARCHAR(50),
	Email VARCHAR(100),
    Address VARCHAR(100),
    PRIMARY KEY (CustomerID)
);
DESCRIBE Customers;
SELECT * FROM Customers;

CREATE TABLE Orders (
    OrderID INT AUTO_INCREMENT,
    CustomerID INT,
    FOREIGN KEY (CustomerID) REFERENCES Customers (CustomerID) ON DELETE SET NULL,
    Date DATE,
    PRIMARY KEY (OrderID)
);
DESCRIBE Orders;
SELECT * FROM Orders;

CREATE TABLE OrderItems (
    OrderItemID INT AUTO_INCREMENT,
    ProductID INT,
    OrderID INT,
    FOREIGN KEY (ProductID) REFERENCES Products (ProductID) ON DELETE SET NULL,
	FOREIGN KEY (OrderID) REFERENCES Orders (OrderID) ON DELETE SET NULL,
    PRIMARY KEY (OrderItemID)
);
DESCRIBE OrderItems;
SELECT * FROM OrderItems;
