# Write your SQL code for the database creation here. Good luck! 
CREATE DATABASE ShopDB;

USE ShopDB;

CREATE table Products (
    ID INT AUTO_INCREMENT,
    Name varchar(50),
    Description varchar(100),
    Price INT,
    WarehouseAmount INT,
    PRIMARY KEY (ID)
);

CREATE table Customers (
    ID INT AUTO_INCREMENT,
    FirstName varchar(50),
    LastName varchar(50),
    Email varchar(50),
    Address varchar(100)
    PRIMARY KEY(ID)
);

CREATE table Orders (
    ID INT AUTO_INCREMENT,
    CustomerID INT,
    Date Date,
    FOREIGN KEY Products(ID) ON DELETE SET NULL,
    PRIMARY KEY (ID)
);

CREATE table OrderItems (
    ID INT AUTO_INCREMENT, 
    OrderID INT,
    ProductID INT,
    FOREIGN KEY Orders(ID) ON DELETE SET NULL,
    FOREIGN KEY Products(ID) ON DELETE SET NULL
);