CREATE TABLE Orders (
    OrderID INT NOT NULL PRIMARY KEY,
    CustomerID INT NOT NULL,
    OrderDate DATE,
    TotalAmount DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);
