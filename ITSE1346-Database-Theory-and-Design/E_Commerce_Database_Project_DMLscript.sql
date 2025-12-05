-- Insert sample data into the Customer table
INSERT INTO Customer (CustomerID, Name, Email, Phone, LoyaltyCardNumber)
VALUES (1, 'Alejandro Rebolloso', 'alejandro.rebolloso@example.com', '1234567899', 'LC123');

INSERT INTO Customer (CustomerID, Name, Email, Phone, LoyaltyCardNumber)
VALUES (2, 'Oluchi Obinna', 'oluchi.obinna@example.com', '9987654321', 'LC456');

INSERT INTO Customer (CustomerID, Name, Email, Phone, LoyaltyCardNumber)
VALUES (3, 'Ella Johnson', 'ella.johnson@example.com', '1122334455', 'LC789');

-- Insert sample data into the Product table
INSERT INTO Product (ProductID, Name, Description, Price, Stock)
VALUES (2001, 'Frying Pan', 'Non-stick pan', 59.99, 50);

INSERT INTO Product (ProductID, Name, Description, Price, Stock)
VALUES (2002, 'Muffin Pan', 'Betty Crocker Silicone Muffin Pan', 29.99, 100);

INSERT INTO Product (ProductID, Name, Description, Price, Stock)
VALUES (2003, 'Air Fryer', ' Dual Airfryer oven', 189.99, 150);

INSERT INTO Product (ProductID, Name, Description, Price, Stock)
VALUES (2004, 'Toaster', '4 slice toaster', 27.00, 75);

-- Insert sample data into the Orders table
INSERT INTO Orders (OrderID, CustomerID, OrderDate, TotalAmount)
VALUES (101, 1, TO_DATE('2024-12-01', 'YYYY-MM-DD'), 119.97);

INSERT INTO Orders (OrderID, CustomerID, OrderDate, TotalAmount)
VALUES (102, 2, TO_DATE('2024-12-02', 'YYYY-MM-DD'), 379.98);

INSERT INTO Orders (OrderID, CustomerID, OrderDate, TotalAmount)
VALUES (103, 3, TO_DATE('2024-12-03', 'YYYY-MM-DD'), 27.00);

-- Insert sample data into the OrderDetails table
INSERT INTO OrderDetails (OrderID, ProductID, Quantity, UnitPrice)
VALUES (101, 2001, 1, 59.99);

INSERT INTO OrderDetails (OrderID, ProductID, Quantity, UnitPrice)
VALUES (101, 2002, 2, 29.99);

INSERT INTO OrderDetails (OrderID, ProductID, Quantity, UnitPrice)
VALUES (102, 2003, 2, 189.99);

INSERT INTO OrderDetails (OrderID, ProductID, Quantity, UnitPrice)
VALUES (103, 2004, 1, 27.00);

-- Insert sample data into the Payment table
INSERT INTO Payment (PaymentID, OrderID, PaymentType, PaymentAmount)
VALUES (5001, 101, 'Credit Card', 119.97);

INSERT INTO Payment (PaymentID, OrderID, PaymentType, PaymentAmount)
VALUES (5002, 102, 'Debit Card', 379.98);

INSERT INTO Payment (PaymentID, OrderID, PaymentType, PaymentAmount)
VALUES (5003, 103, 'Gift Card', 27.00);

-- Insert sample data into the Discount table
INSERT INTO Discount (DiscountID, MinimumPurchase, DiscountPercent)
VALUES (1, 30.00, 10.00);

INSERT INTO Discount (DiscountID, MinimumPurchase, DiscountPercent)
VALUES (2, 80.00, 15.00);

-- Insert sample data into the ItemPriceHistory table
INSERT INTO ItemPriceHistory (HistoryID, ProductID, OldPrice, NewPrice, ChangeDate)
VALUES (1, 2001, 65.99, 59.99, TO_DATE('2024-11-15', 'YYYY-MM-DD'));

INSERT INTO ItemPriceHistory (HistoryID, ProductID, OldPrice, NewPrice, ChangeDate)
VALUES (2, 2002, 35.99, 29.99, TO_DATE('2024-11-10', 'YYYY-MM-DD'));

INSERT INTO ItemPriceHistory (HistoryID, ProductID, OldPrice, NewPrice, ChangeDate)
VALUES (3, 2003, 200.99, 189.99, TO_DATE('2024-11-20', 'YYYY-MM-DD'));

INSERT INTO ItemPriceHistory (HistoryID, ProductID, OldPrice, NewPrice, ChangeDate)
VALUES (4, 2004, 35.00, 27.00, TO_DATE('2024-11-25', 'YYYY-MM-DD'));
