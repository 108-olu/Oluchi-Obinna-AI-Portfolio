-- Customer table
CREATE TABLE Customer (
    CustomerID NUMBER PRIMARY KEY,
    Name VARCHAR2(100) NOT NULL,
    Email VARCHAR2(150) UNIQUE NOT NULL,
    Phone VARCHAR2(15),
    LoyaltyCardNumber VARCHAR2(20)
);

-- Product table
CREATE TABLE Product (
    ProductID NUMBER PRIMARY KEY,
    Name VARCHAR2(100) NOT NULL,
    Description CLOB,  
    Price NUMBER(10, 2) NOT NULL CHECK (Price > 0), 
    Stock NUMBER NOT NULL CHECK (Stock >= 0)
);

-- Orders table
CREATE TABLE Orders (
    OrderID NUMBER PRIMARY KEY,
    CustomerID NUMBER NOT NULL,
    OrderDate DATE NOT NULL,
    TotalAmount NUMBER(10, 2),
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);

-- OrderDetails table
CREATE TABLE OrderDetails (
    OrderID NUMBER NOT NULL,
    ProductID NUMBER NOT NULL,
    Quantity NUMBER NOT NULL CHECK (Quantity > 0),
    UnitPrice NUMBER(10, 2) NOT NULL CHECK (UnitPrice > 0),
    PRIMARY KEY (OrderID, ProductID),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Product(ProductID)
);

-- Payment table
CREATE TABLE Payment (
    PaymentID NUMBER PRIMARY KEY,
    OrderID NUMBER NOT NULL,
    PaymentType VARCHAR2(50) NOT NULL,
    PaymentAmount NUMBER(10, 2) NOT NULL CHECK (PaymentAmount > 0),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);

-- Discount table
CREATE TABLE Discount (
    DiscountID NUMBER PRIMARY KEY,
    MinimumPurchase NUMBER(10, 2) NOT NULL,
    DiscountPercent NUMBER(5, 2) NOT NULL CHECK (DiscountPercent BETWEEN 0 AND 100)
);

-- ItemPriceHistory table
CREATE TABLE ItemPriceHistory (
    HistoryID NUMBER PRIMARY KEY,
    ProductID NUMBER NOT NULL,
    OldPrice NUMBER(10, 2) NOT NULL,
    NewPrice NUMBER(10, 2) NOT NULL,
    ChangeDate DATE NOT NULL,
    FOREIGN KEY (ProductID) REFERENCES Product(ProductID)
);

