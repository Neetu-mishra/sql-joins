DROP DATABASE joins_demo;
CREATE DATABASE joins_demo;
USE joins_demo;
CREATE TABLE Customers(
CustomerID INT PRIMARY KEY,
CustomerName VARCHAR(50),
Country VARCHAR(50));
-- Create Orders table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    Amount DECIMAL(10,2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);
-- Insert customers
INSERT INTO Customers VALUES 
(1, 'John', 'USA'),
(2, 'Emma', 'UK'),
(3, 'Raj', 'India'),
(4, 'Sara', 'USA');

-- Insert orders
INSERT INTO Orders VALUES 
(101, 1, '2025-09-25', 250.00),
(102, 2, '2025-09-26', 300.00),
(103, 1, '2025-09-27', 150.00),
(104, 3, '2025-09-28', 400.00);
SELECT Customers.CustomerName, Orders.OrderID, Orders.Amount
FROM Customers
INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID;
SELECT Customers.CustomerName, Orders.OrderID, Orders.Amount
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;
SELECT Customers.CustomerName, Orders.OrderID, Orders.Amount
FROM Customers
RIGHT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;
SELECT Customers.CustomerName, Orders.OrderID, Orders.Amount
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
UNION
SELECT Customers.CustomerName, Orders.OrderID, Orders.Amount
FROM Customers
RIGHT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

