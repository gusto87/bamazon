DROP DATABASE IF EXISTS bamazonDB;

CREATE DATABASE bamazonDB;

USE bamazonDB;

CREATE TABLE products (
    item_id INT NOT NULL AUTO_INCREMENT,
    product_name VARCHAR(45) NULL,
    department_name VARCHAR (50) NULL,
    price DECIMAL(10,2) NULL,
    stock_quantity INT NULL

)

SELECT * FROM products;

INSERT INTO products( product_name, department_name, price, stock_quantity)
VALUES ("Omega Deville", "Timepieces", 1000.00, 5);

INSERT INTO products( product_name, department_name, price, stock_quantity)
VALUES ("Sony 55in 4k tv", "TVs", 349.99, 20);

INSERT INTO products( product_name, department_name, price, stock_quantity)
VALUES ("DeWalt 20v impact drill", "Power Tools", 127.00, 15);

INSERT INTO products( product_name, department_name, price, stock_quantity)
VALUES ("Nike Vapor Max", "Footwear", 189.99, 12);

INSERT INTO products( product_name, department_name, price, stock_quantity)
VALUES ("Schwinn Miko Cruiser", "Bikes", 269.99, 4);

INSERT INTO products( product_name, department_name, price, stock_quantity)
VALUES ("JBL Xtreme speaker", "Speakers", 189.99, 10);

INSERT INTO products( product_name, department_name, price, stock_quantity)
VALUES ("knife","Kitchen Items", 24.99, 38);

INSERT INTO products( product_name, department_name, price, stock_quantity)
VALUES ("leather jacket","Outerwear", 199.99, 3);

INSERT INTO products( product_name, department_name, price, stock_quantity)
VALUES ("Cannon camera", "electronics", 129.99, 4);

INSERT INTO products( product_name, department_name, price, stock_quantity)
VALUES ("Adidas Ultra Boost","Footwear", 159.99, 11);