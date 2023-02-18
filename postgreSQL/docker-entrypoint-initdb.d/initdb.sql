-- Create the database
CREATE DATABASE transactional_data;
USE transactional_data;

-- Create the transactions table
CREATE TABLE transactions (
    transaction_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    transaction_date DATE,
    transaction_amount DECIMAL(10, 2)
);

-- Create the customers table
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email VARCHAR(255),
    address VARCHAR(255)
);

-- Create the products table
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(255),
    product_description TEXT,
    product_price DECIMAL(10, 2)
);

-- Add foreign key constraints
ALTER TABLE transactions
ADD FOREIGN KEY (customer_id) REFERENCES customers(customer_id);

ALTER TABLE transactions
ADD FOREIGN KEY (product_id) REFERENCES products(product_id);

-- Insert data into the customers table
INSERT INTO customers (customer_id, first_name, last_name, email, address)
VALUES (1, 'John', 'Doe', 'johndoe@example.com', '123 Main St'),
       (2, 'Jane', 'Doe', 'janedoe@example.com', '456 Park Ave'),
       (3, 'Bob', 'Smith', 'bobsmith@example.com', '789 Elm St'),
       (4, 'Samantha', 'Johnson', 'samanthaj@example.com', '321 Oak St'),
       (5, 'Michael', 'Williams', 'michaelw@example.com', '654 Pine St'),
       (6, 'Emily', 'Jones', 'emilyj@example.com', '987 Cedar St'),
       (7, 'Jacob', 'Brown', 'jacobb@example.com', '246 Birch St'),
       (8, 'Ashley', 'Miller', 'ashleym@example.com', '369 Maple St'),
       (9, 'Matthew', 'Davis', 'matthewd@example.com', '159 Oak St'),
       (10, 'Olivia', 'Garcia', 'oliviag@example.com', '753 Pine St'),
       (11, 'Nicholas', 'Rodriguez', 'nicholasr@example.com', '951 Cedar St'),
       (12, 'Isabella', 'Martinez', 'isabellam@example.com', '753 Birch St'),
       (13, 'William', 'Hernandez', 'williamh@example.com', '369 Maple St'),
       (14, 'Sofia', 'Lopez', 'sofial@example.com', '159 Oak St'),
       (15, 'Mason', 'Gonzalez', 'masong@example.com', '753 Pine St');

-- Insert data into the products table
INSERT INTO products (product_id, product_name, product_description, product_price)
VALUES (1, 'Product 1', 'Description of product 1', 19.99),
       (2, 'Product 2', 'Description of product 2', 29.99),
       (3, 'Product 3', 'Description of product 3', 39.99),
       (4, 'Product 4', 'Description of product 4', 49.99),
       (5, 'Product 5', 'Description of product 5', 59.99),
       (6, 'Product 6', 'Description of product 6', 69.99),
       (7, 'Product 7', 'Description of product 7', 79.99),
       (8, 'Product 8', 'Description of product 8', 89.99),
       (9, 'Product 9', 'Description of product 9', 99.99),
       (10, 'Product 10', 'Description of product 10', 109.99),
       (11, 'Product 11', 'Description of product 11', 119.99),
       (12, 'Product 12', 'Description of product 12', 129.99),
       (13, 'Product 13', 'Description of product 13', 139.99),
       (14, 'Product 14', 'Description of product 14', 149.99),
       (15, 'Product 15', 'Description of product 15', 159.99);

-- Insert data into the transactions table
INSERT INTO transactions (transaction_id, customer_id, product_id, transaction_date, transaction_amount)
VALUES (1, 1, 1, '2022-01-01', 1),
       (2, 1, 2, '2022-01-02', 2),
       (3, 1, 3, '2022-01-03', 5),
       (4, 2, 1, '2022-01-04', 4),
       (5, 2, 2, '2022-01-05', 2),
       (6, 2, 3, '2022-01-06', 3),
       (7, 3, 1, '2022-01-07', 1),
       (8, 3, 2, '2022-01-08', 2),
       (9, 3, 3, '2022-01-09', 3),
       (10, 4, 1, '2022-01-10', 1),
       (11, 4, 2, '2022-01-11', 2),
       (12, 4, 3, '2022-01-12', 3),
       (13, 5, 1, '2022-01-13', 1),
       (14, 5, 2, '2022-01-14', 2),
       (15, 5, 3, '2022-01-15', 3),
       (16, 6, 1, '2022-01-16', 1),
       (17, 6, 2, '2022-01-17', 2),
       (18, 6, 3, '2022-01-18', 3),
       (19, 7, 1, '2022-01-19', 1),
       (20, 7, 2, '2022-01-20', 2),
       (21, 7, 3, '2022-01-21', 3),
       (22, 8, 1, '2022-01-22', 1),
       (23, 8, 2, '2022-01-23', 2),
       (24, 8, 3, '2022-01-24', 3),
       (25, 9, 1, '2022-01-25', 1),
       (26, 9, 2, '2022-01-26', 2),
       (27, 9, 3, '2022-01-27', 3),
       (28, 10, 1, '2022-01-28', 1),
       (29, 10, 2, '2022-01-29', 2),
       (30, 10, 3, '2022-01-30', 3),
       (31, 11, 1, '2022-01-31', 1),
       (32, 11, 2, '2022-02-01', 2),
       (33, 11, 3, '2022-02-02', 3),
       (34, 12, 1, '2022-02-03', 1);