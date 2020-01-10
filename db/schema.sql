### Schema

CREATE DATABASE market_db;
USE market_db;

CREATE TABLE products
(
id int NOT NULL AUTO_INCREMENT,
product_id VARCHAR(100) NOT NULL,
product_name VARCHAR(100) NOT NULL,
product_type VARCHAR(100) NOT NULL,
price VARCHAR(10) NOT NULL, 
PRIMARY KEY(id)
);

CREATE TABLE customer
(
id int NOT NULL AUTO_INCREMENT,
customer_id VARCHAR(100) NOT NULL,
customer_name VARCHAR(100) NOT NULL,
customer_adress VARCHAR(100) NOT NULL,
city VARCHAR(20),
zip VARCHAR(10),
street VARCHAR(100),
email VARCHAR(100),
phone VARCHAR(20),
PRIMARY KEY (id)
);

CREATE TABLE orders
(
order_id int NOT NULL AUTO_INCREMENT,
customer_id VARCHAR(100) NOT NULL
);

CREATE TABLE order_details
(
order_id int NOT NULL,
product_id int NOT NULL
);
CREATE TABLE supermarket
(
    id int NOT NULL AUTO_INCREMENT,
    city_id VARCHAR(100) NOT NULL,
    supermarket_name(100) NOT NULL,
    PRIMARY KEY (id)
);
CREATE TABLE city
(
    id int NOT NULL AUTO_INCREMENT,
    city_name VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE category
(
    id int NOT NULL AUTO_INCREMENT,
    city_name VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);