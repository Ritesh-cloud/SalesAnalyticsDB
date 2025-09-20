CREATE DATABASE SalesAnalyticsDB;
USE SalesAnalyticsDB;
DROP database salesanalyticsdb;

#CREATE TABLE 

CREATE TABLE customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    region VARCHAR(50)
);

CREATE TABLE products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10, 2)
);
 
CREATE TABLE sales (
    sale_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    product_id INT,
    sale_date DATE,
    sale_amount DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

CREATE TABLE inventory (
    product_id INT PRIMARY KEY,
    stock_level INT,
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

#INSERT DATA 

INSERT INTO customers (first_name, last_name, email, region)
VALUES 
('John', 'Doe', 'john.doe@example.com', 'North'),
('Jane', 'Smith', 'jane.smith@example.com', 'South'),
('Alice', 'Johnson', 'alice.johnson@example.com', 'East'),
('Bob', 'Brown', 'bob.brown@example.com', 'West'),
('Charlie', 'Davis', 'charlie.davis@example.com', 'North');

INSERT INTO products (product_name, category, price)
VALUES 
('Product A', 'Electronics', 299.99),
('Product B', 'Clothing', 49.99),
('Product C', 'Electronics', 199.99),
('Product D', 'Home & Kitchen', 79.99),
('Product E', 'Sports', 29.99);

INSERT INTO sales (customer_id, product_id, sale_date, sale_amount)
VALUES 
(1, 1, '2023-01-15', 299.99),
(2, 2, '2023-02-20', 49.99),
(3, 3, '2023-03-25', 199.99),
(4, 4, '2023-04-30', 79.99),
(5, 5, '2023-05-05', 29.99),
(1, 2, '2023-06-15', 49.99),
(2, 3, '2023-07-22', 199.99),
(3, 4, '2023-08-17', 79.99),
(4, 5, '2023-09-20', 29.99),
(5, 1, '2023-10-01', 299.99);

INSERT INTO inventory (product_id, stock_level)
VALUES 
(1, 50),
(2, 100),
(3, 75),
(4, 40),
(5, 200);





-- 1. View All Customers
SELECT * FROM customers;

-- 2. View All Products
SELECT * FROM products;

-- 3. View All Sales
SELECT * FROM sales;

-- 4. View All Inventory
SELECT * FROM inventory;

-- 5. Find a Specific Customer (by First Name, e.g., John)
SELECT * FROM customers
WHERE first_name = 'John';

-- 6. Find a Specific Product (by Product Name, e.g., Product A)
SELECT * FROM products
WHERE product_name = 'Product A';

-- 7. Find Sales by a Specific Customer (e.g., customer_id = 1 for John Doe)
SELECT * FROM sales
WHERE customer_id = 1;

-- 8. View Sales for a Specific Product (e.g., product_id = 1 for Product A)
SELECT * FROM sales
WHERE product_id = 1;

-- 9. View Customers from a Specific Region (e.g., Region = 'North')
SELECT * FROM customers
WHERE region = 'North';

-- 10. Check Stock Level of a Specific Product (e.g., product_id = 1 for Product A)
SELECT stock_level
FROM inventory
WHERE product_id = 1;








