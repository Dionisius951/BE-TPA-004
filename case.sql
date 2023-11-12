-- 1 user membeli 3 barang berbeda
INSERT INTO Orders (Customer_ID, Order_Date, Total_Amount)
VALUES (1, '2023-11-11', 0);

INSERT INTO OrderDetails (Order_ID, Product_ID, Quantity, Subtotal)
VALUES
    (LAST_INSERT_ROWID(), 1, 1, 12000000),  -- Laptop
    (LAST_INSERT_ROWID(), 4, 2, 300000),    -- Celana Formal
    (LAST_INSERT_ROWID(), 6, 1, 150000);    -- Tas

-- Melihat 3 barang yang paling sering dibeli pelanggan
SELECT
    p.Product_Name,
    COUNT(od.Product_ID) AS Purchase_Count
FROM
    OrderDetails od
JOIN
    Products p ON od.Product_ID = p.Product_ID
GROUP BY
    od.Product_ID
ORDER BY
    Purchase_Count DESC
LIMIT 3;

-- Kategori barang yang paling banyak barangnya
SELECT
    c.Category_Name,
    COUNT(p.Product_ID) AS Product_Count
FROM
    Products p
JOIN
    Categories c ON p.Category_ID = c.Category_ID
GROUP BY
    c.Category_ID
ORDER BY
    Product_Count DESC
LIMIT 1;
