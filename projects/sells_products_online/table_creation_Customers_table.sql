CREATE TABLE Customers (
    CustomerID INT 	NOT NULL PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Email VARCHAR(100) NOT NULL UNIQUE,
    Country VARCHAR(50) NOT NULL
);
