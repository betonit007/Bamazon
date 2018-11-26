DROP DATABASE IF EXISTS bamazon;
CREATE DATABASE bamazon;
USE bamazon;

CREATE TABLE products(
    id INTEGER(10) AUTO INCREMENT NOT NULL,
    product_name VARCHAR(100),
    department_name VARCHAR(100),
    price DECIMAL(5, 2),
    stock_quantity INTEGER(100) NOT NULL,
    PRIMARY KEY (id)
)

INSERT INTO products (product_name, department_name, price, stock_quantity) 
VALUES('PlayStation 4', 'Electronics', 179.99, 65);

SELECT stock_quantity, price FROM products WHERE id = 4;

UPDATE products SET stock_quantity = stock_quantity - 1
WHERE id = 1;

UPDATE products SET stock_quantity = 50
WHERE id = 10;

UPDATE products SET price = 219.99
WHERE id = 12;

SELECT * FROM products;