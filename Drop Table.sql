-- Menghapus table customers. Namun sebelum itu harus menghapus FK pada table orders
ALTER TABLE Orders
DROP FOREIGN KEY Customer_ID;

DROP TABLE Customers

-- Menghapus table Products. Namun sebelum itu harus menghapus FK pada table OrderDetails
ALTER TABLE OrderDetails
DROP FOREIGN KEY Product_ID;

DROP TABLE Products;