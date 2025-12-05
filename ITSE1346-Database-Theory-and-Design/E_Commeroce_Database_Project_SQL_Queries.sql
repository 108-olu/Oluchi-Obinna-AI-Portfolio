SELECT O.OrderID, O.OrderDate, O.TotalAmount FROM Orders O JOIN Customer C ON O.CustomerID = C.CustomerID WHERE C.CustomerID = 1;


SELECT Name, Stock FROM Product WHERE ProductID = 2001;


SELECT O.OrderID, SUM(OD.Quantity * OD.UnitPrice) AS TotalAmount FROM OrderDetails OD JOIN Orders O ON OD.OrderID = O.OrderID WHERE O.OrderID = 101   GROUP BY O.OrderID;


SELECT O.OrderID,
       SUM(OD.Quantity * OD.UnitPrice) AS TotalAmount, D.DiscountPercent, (SUM(OD.Quantity * OD.UnitPrice) * (1 - D.DiscountPercent / 100)) AS DiscountedTotal FROM OrderDetails OD JOIN Orders O ON OD.OrderID = O.OrderID LEFT JOIN Discount D ON SUM(OD.Quantity * OD.UnitPrice) >= D.MinimumPurchase WHERE O.OrderID = 101  GROUP BY O.OrderID, D.DiscountPercent;


SELECT P.Name, I.OldPrice, I.NewPrice, I.ChangeDate FROM ItemPriceHistory I JOIN Product P ON I.ProductID = P.ProductID WHERE I.ProductID = 2001;


SELECT ProductID, Name, Stock FROM Product WHERE Stock < 50;
