CREATE DATABASE IF NOT EXISTS onlinefoodorderingsystem;
USE onlinefoodorderingsystem;

CREATE TABLE IF NOT EXISTS Menu (
    ItemID INT AUTO_INCREMENT PRIMARY KEY,
    ItemName VARCHAR(100),
    Category VARCHAR(50),
    Price DECIMAL(10,2),
    Description TEXT
);

CREATE TABLE IF NOT EXISTS Orders (
    OrderID INT AUTO_INCREMENT PRIMARY KEY,
    CustomerName VARCHAR(100),
    ItemID INT,
    Quantity INT,
    TotalCost DECIMAL(10,2),
    OrderTime TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (ItemID) REFERENCES Menu(ItemID)
);

CREATE TABLE IF NOT EXISTS BillSummary (
    BillID INT AUTO_INCREMENT PRIMARY KEY,
    CustomerName VARCHAR(100),
    TotalAmount DECIMAL(10,2),
    GeneratedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO Menu (ItemName, Category, Price, Description) VALUES
('Butter Chicken', 'Indian', 350.00, 'Creamy chicken curry with spices.'),
('Paneer Butter Masala', 'Indian', 280.00, 'Paneer cubes in a rich tomato gravy.'),
('Masala Dosa', 'Indian', 150.00, 'Crispy rice crepe with potato filling.'),
('Biryani (Chicken)', 'Indian', 300.00, 'Aromatic spiced rice with chicken.'),
('Margherita Pizza', 'Italian', 400.00, 'Classic cheese pizza with basil.'),
('Alfredo Pasta', 'Italian', 350.00, 'Creamy white sauce pasta.'),
('Tiramisu', 'Italian', 250.00, 'Coffee-flavored Italian dessert.'),
('Sushi Platter', 'Japanese', 500.00, 'Assorted sushi with wasabi and soy.'),
('Caesar Salad', 'Continental', 200.00, 'Crisp lettuce with Caesar dressing.'),
('BBQ Chicken Wings', 'American', 350.00, 'Spicy grilled chicken wings.'),
('Chowmin', 'Chinese', 50.00, NULL);
