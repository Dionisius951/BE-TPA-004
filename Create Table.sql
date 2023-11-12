CREATE TABLE Customers (
    Customer_ID INTEGER PRIMARY KEY NOT NULL auto_increment,
    Name VARCHAR(50) NOT NULL,
    Email VARCHAR(50) NOT NULL,
    Address VARCHAR(50) NOT NULL,
    Phone VARCHAR(50) NOT NULL
);


CREATE TABLE Categories (
    Category_ID INTEGER PRIMARY KEY NOT NULL auto_increment,
    Category_Name VARCHAR(50)
);

CREATE TABLE Products (
    Product_ID INTEGER PRIMARY KEY NOT NULL auto_increment,
    Product_Name VARCHAR(50) NOT NULL,
    Price INTEGER NOT NULL,
    Category_ID INTEGER NOT NULL,
    Stock INTEGER NOT NULL,
    
    FOREIGN KEY (Category_ID) REFERENCES Categories(Category_ID)
);


CREATE TABLE Orders (
    Order_ID INTEGER PRIMARY KEY NOT NULL auto_increment,
    Customer_ID INTEGER NOT NULL,
    Order_Date DATE NOT NULL,
    Total_Amount DECIMAL NOT NULL,
    
    FOREIGN KEY (Customer_ID) REFERENCES Customers(Customer_ID)
);

CREATE TABLE OrderDetails (
    OD_ID INTEGER PRIMARY KEY NOT NULL auto_increment,
    Order_ID INTEGER NOT NULL,
    Product_ID INTEGER NOT NULL,
    Quantity INTEGER NOT NULL,
    Subtotal DECIMAL NOT NULL,
    
    FOREIGN KEY (Order_ID) REFERENCES Orders(Order_ID),
    FOREIGN KEY (Product_ID) REFERENCES Products(Product_ID)
);
