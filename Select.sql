-- Menampilkan data transaksi user
SELECT
    c.Name AS Customer_Name,
    p.Product_Name,
    od.Quantity
FROM
    OrderDetails od
JOIN
    Orders o ON od.Order_ID = o.Order_ID
JOIN
    Customers c ON o.Customer_ID = c.Customer_ID
JOIN
    Products p ON od.Product_ID = p.Product_ID;

-- Menampilkan data customers
SELECT * FROM Customers;