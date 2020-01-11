CREATE DATABASE market_db;
USE market_db;

<<<<<<< HEAD
CREATE TABLE products
(
	id int NOT NULL
	AUTO_INCREMENT,
product_id VARCHAR
	(100) NOT NULL,
product_name VARCHAR
	(100) NOT NULL,
product_type VARCHAR
	(100) NOT NULL,
price VARCHAR
	(10) NOT NULL, 
PRIMARY KEY
	(id)
);

	CREATE TABLE customer
	(
		id int NOT NULL
		AUTO_INCREMENT,
customer_id VARCHAR
		(100) NOT NULL,
customer_name VARCHAR
		(100) NOT NULL,
customer_adress VARCHAR
		(100) NOT NULL,
city VARCHAR
		(20),
zip VARCHAR
		(10),
street VARCHAR
		(100),
email VARCHAR
		(100),
phone VARCHAR
		(20),
PRIMARY KEY
		(id)
);
		CREATE TABLE orders
		(
			order_id int NOT NULL
			AUTO_INCREMENT,
customer_id VARCHAR
			(100) NOT NULL
);

			CREATE TABLE order_details
			(
				order_id int NOT NULL,
				product_id int NOT NULL
			);
			CREATE TABLE supermarket
			(
				id int NOT NULL
				AUTO_INCREMENT,
	city_id VARCHAR
				(100) NOT NULL,
	supermarket_name
				(100) NOT NULL,
	PRIMARY KEY
				(id)
);
				CREATE TABLE city
				(
					id int NOT NULL
					AUTO_INCREMENT,
	city_name VARCHAR
					(100) NOT NULL,
	PRIMARY KEY
					(id)
);
					CREATE TABLE category
					(
						id int NOT NULL
						AUTO_INCREMENT,
	city_name VARCHAR
						(100) NOT NULL,
	PRIMARY KEY
						(id)
);

=======
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

CREATE TABLE customers
(
customer_id int(11) NOT NULL AUTO_INCREMENT,
customer_name VARCHAR(50) NOT NULL,
customer_adress VARCHAR(100) NOT NULL,
city VARCHAR(20) NOT NULL,
state VARCHAR(50) DEFAULT NULL,
postalCode VARCHAR(20) DEFAULT NULL,
country VARCHAR(100)NOT NULL,
phone VARCHAR(50)NOT NULL,
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
    PRIMARY KEY (supermarket_id)
);

CREATE TABLE city
(
    city_id INT(11) NOT NULL AUTO_INCREMENT,
    city_name VARCHAR(100) NOT NULL,
    country_name VARCHAR(50)NOT NULL, 
    PRIMARY KEY (city_id)
);

CREATE TABLE category
(
    category_id INT(11) NOT NULL AUTO_INCREMENT,
    PRIMARY KEY (category_id)
);
>>>>>>> 0dc91d9b491d75491ca9dbef291d63062ad1a39f
