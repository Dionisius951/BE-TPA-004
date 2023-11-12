-- Melakukan update quantity pada table orderdetails pada order_id 1 dan product_id 1
UPDATE OrderDetails
SET Quantity = 5
WHERE Order_ID = 1 AND Product_ID = 1;

-- Melakukan update stock pada table Products dengan Product_ID 1
UPDATE Products
SET Stock = 30
WHERE Product_ID = 1; 