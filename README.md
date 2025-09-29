SQL Joins Task (Inner, Left, Right, Full)

Objective

Learn to combine data from multiple tables using different types of SQL joins.


---

Tools Used

MySQL Workbench 



---

Steps Followed

1. Created two related tables:

Customers: CustomerID, CustomerName, Country

Orders: OrderID, CustomerID, OrderDate, Amount



2. Inserted sample data into both tables.


3. Wrote SQL queries using:

INNER JOIN

LEFT JOIN

RIGHT JOIN

FULL JOIN (using UNION in MySQL)





---

SQL Queries

-- INNER JOIN
SELECT Customers.CustomerName, Orders.OrderID, Orders.Amount
FROM Customers
INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

-- LEFT JOIN
SELECT Customers.CustomerName, Orders.OrderID, Orders.Amount
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

-- RIGHT JOIN
SELECT Customers.CustomerName, Orders.OrderID, Orders.Amount
FROM Customers
RIGHT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

-- FULL JOIN (using UNION for MySQL)
SELECT Customers.CustomerName, Orders.OrderID, Orders.Amount
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
UNION
SELECT Customers.CustomerName, Orders.OrderID, Orders.Amount
FROM Customers
RIGHT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;
