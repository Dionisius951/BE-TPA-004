INSERT INTO Customers ( Name, Email, Address, Phone)
VALUES
    ('Dionisius', 'dionisius@gmail.com', 'Jl. Sudirman 123', '08123456789'),
    ('Andri', 'Andri@gmail.com', 'Jl. Thamrin 456', '08765432123'),
    ('Farel', 'farel@gmail.com', 'Jl. Gatot Subroto 789', '08111223344'),
    ('Adam', 'adam@gmail.com', 'Jl. Diponegoro 101', '08778889900'),
    ('Hirzi', 'hirzi@gmail.com', 'Jl. Teuku Umar 202', '08122334455'),
    ('Auzan', 'auzan@gmail.com', 'Jl. Kusuma Bangsa 303', '08887776666'),
    ('Dewa', 'dewa@gmail.com', 'Jl. Darmo 404', '08133445566'),
    ('Paulus', 'paulus@gmail.com', 'Jl. Sisingamangaraja 505', '08771234567'),
    ('Gidion', 'gidion@gmail.com', 'Jl. Pemuda 606', '08155667788'),
    ('Bryan', 'bryanr@gmail.com', 'Jl. Majapahit 707', '08889990000');



INSERT INTO Categories ( Category_Name)
VALUES
    ('Elektronik'),
    ('Fashion'),
    ('Buku');


INSERT INTO Products ( Product_Name, Price, Category_ID, Stock)
VALUES
    ('Laptop', 12000000, 1, 10),
    ('Celana Jeans', 300000, 2, 20),
    ('Celana Formal', 350000, 2, 50),
    ('Buku Dongeng', 150000, 3, 15),
    ('Handphone', 2500000, 3, 15),
    ('Tas', 150000, 2, 15),
    ('Kemeja', 150000, 2, 15),
    ('Kaos', 100000, 2, 15),
    ('Novel', 250000, 3, 15),
    ('Headphone', 150000, 1, 15),
    ('Monitor', 150000, 1, 20),
    ('Keyboard', 150000, 3, 15);
   