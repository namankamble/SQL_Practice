CREATE TABLE OrderItems (
    OrderItemID INT NOT NULL PRIMARY KEY,
    OrderID INT NOT null,
    ProductID INT NOT NULL,
    Quantity INT NOT NULL,
    UnitPrice DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);
