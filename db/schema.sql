DROP DATABASE IF EXISTS market_db;
CREATE DATABASE market_db;

USE market_db;

DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS order_details;
DROP TABLE IF EXISTS supermarkt;
DROP TABLE IF EXISTS city;
DROP TABLE IF EXISTS category;

CREATE TABLE products
(
product_id int NOT NULL AUTO_INCREMENT,
product_name VARCHAR(100) NOT NULL,
product_category VARCHAR(50) NOT NULL,
product_type TEXT NOT NULL,
price DECIMAL(10, 2) NOT NULL, 
PRIMARY KEY(product_id)
);

	CREATE TABLE customers (
    customer_id INT(11) NOT NULL AUTO_INCREMENT,
    customer_name VARCHAR(50) NOT NULL,
    customer_adress VARCHAR(100) NOT NULL,
    city VARCHAR(20) NOT NULL,
    state VARCHAR(50) DEFAULT NULL,
    postalCode VARCHAR(20) DEFAULT NULL,
    country VARCHAR(100) NOT NULL,
    phone VARCHAR(50) NOT NULL,
    PRIMARY KEY (customer_id)
);

CREATE TABLE orders
(
order_id INT(11) NOT NULL AUTO_INCREMENT,
order_date DATE NOT NULL,
customer_id VARCHAR(100) NOT NULL,
PRIMARY KEY (order_id)
);

CREATE TABLE order_details
(
order_id INT(11) NOT NULL,
product_id int NOT NULL,
price_each DECIMAL(10 , 2) NOT NULL
);

CREATE TABLE supermarket
(
    supermarket_id INT(11) NOT NULL AUTO_INCREMENT,
    city_id VARCHAR(100) NOT NULL,
    supermarket_name VARCHAR(100) NOT NULL,
    image varchar(1000),
    PRIMARY KEY (supermarket_id)
);

CREATE TABLE city
(
    city_id INT(11) NOT NULL AUTO_INCREMENT,
    city_name VARCHAR(100) NOT NULL,
    country_name VARCHAR(50)NOT NULL, 
    PRIMARY KEY (city_id)
);

CREATE TABLE category (
    category_id INT(11) NOT NULL AUTO_INCREMENT,
    PRIMARY KEY (category_id)
);


INSERT INTO products
VALUES
    ( NULL, 1234 , 'Tomato' , 'VEGEN_VEGETABLE' , 4);
INSERT INTO customers
VALUES
    ( NULL, 'Bobbi' , 'tibet' , 'lhasha' , 1909 , 'bhrikuti_marga' , 'iwillcallyousoon.com' , 9840064297 );
INSERT INTO orders
VALUES
    ( NULL , '2008-11-11' ,2134 );
INSERT INTO order_details
VALUES
    (56 , 1234, 67 );
INSERT INTO supermarket
VALUES
    ( NULL , 47 , 'EDEKA', 'http://lorempixel.com/400/200/food/');
    INSERT INTO supermarket
VALUES
    ( NULL , 69 , 'REWE', null );
INSERT INTO city
VALUES
    ( NULL , 'Berlin',  'germany' );
INSERT INTO category
VALUES
    ( NULL );



