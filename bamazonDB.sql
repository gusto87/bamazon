DROP DATABASE IF EXISTS bamazonDB;

CREATE DATABASE bamazonDB;

USE bamazonDB;

CREATE TABLE products (
    item_id INT,
    product_name VARCHAR(45) NULL,
    department_name VARCHAR (50) NULL,
    price DECIMAL(10 ,2) NULL,
    stock_quantity INT NULL,
    PRIMARY KEY (item_id)

);

SELECT * FROM products;

INSERT INTO products(item_id, product_name, department_name, price, stock_quantity)
VALUES (301,"Omega Deville", "Timepieces", 1000.00, 5);

INSERT INTO products(item_id, product_name, department_name, price, stock_quantity)
VALUES (504, "Sony 55in 4k tv", "TVs", 349.99, 20);

INSERT INTO products(item_id, product_name, department_name, price, stock_quantity)
VALUES (607, "DeWalt 20v impact drill", "Power Tools", 127.00, 15);

INSERT INTO products(item_id, product_name, department_name, price, stock_quantity)
VALUES (704, "Nike Vapor Max", "Footwear", 189.99, 12);

INSERT INTO products(item_id, product_name, department_name, price, stock_quantity)
VALUES (307,"Schwinn Miko Cruiser", "Bikes", 269.99, 4);

INSERT INTO products( item_id, product_name, department_name, price, stock_quantity)
VALUES (544, "JBL Xtreme speaker", "Speakers", 189.99, 10);

INSERT INTO products(item_id, product_name, department_name, price, stock_quantity)
VALUES (488, "knife","Kitchen Items", 24.99, 38);

INSERT INTO products(item_id, product_name, department_name, price, stock_quantity)
VALUES (645,"leather jacket","Outerwear", 199.99, 3);

INSERT INTO products(item_id, product_name, department_name, price, stock_quantity)
VALUES (324, "Cannon camera", "electronics", 129.99, 4);

INSERT INTO products(item_id, product_name, department_name, price, stock_quantity)
VALUES (804, "Adidas Ultra Boost","Footwear", 159.99, 11);