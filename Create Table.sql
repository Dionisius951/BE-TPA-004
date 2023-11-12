CREATE TABLE Products (
    Product_ID INTEGER PRIMARY KEY,
    Product_Name VARCHAR(50),
    Price INTEGER,
    Category_ID INTEGER,
    Stock INTEGER,
    
    FOREIGN KEY (Category_ID) REFERENCES Categories(Category_ID)
);

CREATE TABLE Categories (
    Category_ID INTEGER PRIMARY KEY,
    Category_Name VARCHAR(50)
);

CREATE TABLE Orders (
    Order_ID INTEGER PRIMARY KEY,
    Customer_ID INTEGER,
    Order_Date DATE,
    Total_Amount DECIMAL,
    
    FOREIGN KEY (Customer_ID) REFERENCES Customers(Customer_ID)
);

CREATE TABLE OrderDetails (
    OD_ID INTEGER PRIMARY KEY,
    Order_ID INTEGER,
    Product_ID INTEGER,
    Quantity INTEGER,
    Subtotal DECIMAL,
    
    FOREIGN KEY (Order_ID) REFERENCES Orders(Order_ID),
    FOREIGN KEY (Product_ID) REFERENCES Products(Product_ID)
);

CREATE TABLE Customers (
    Customer_ID INTEGER PRIMARY KEY,
    Name VARCHAR(50),
    Email VARCHAR(50),
    Address VARCHAR(50),
    Phone VARCHAR(50)
);