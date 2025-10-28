CREATE TABLE customer(
customer_id VARCHAR(15),
signup_date	DATE NOT NULL,
city VARCHAR(25),
acquisition_channel VARCHAR(25)
);

SELECT * FROM customer;

CREATE TABLE delivery_partner(
delivery_partner_id	VARCHAR(15),
partner_name VARCHAR(50),	
city VARCHAR(25),	
vehicle_type VARCHAR(20),
employment_type	VARCHAR(15),
avg_rating DECIMAL(10,2),
is_active BOOLEAN
);

SELECT * FROM delivery_partner;

CREATE TABLE menu_items(
menu_item_id VARCHAR(25),
restaurant_id VARCHAR(15),
item_name VARCHAR(50),
category VARCHAR(25),
is_veg BOOLEAN,
price DECIMAL(10,2)
);

SELECT * FROM menu_items;

CREATE TABLE restaurant(
restaurant_id VARCHAR(20),
restaurant_name VARCHAR(50),
city VARCHAR(25),
cuisine_type VARCHAR(25),
partner_type VARCHAR(30),
avg_prep_time_min VARCHAR(10),
is_active BOOLEAN
);

SELECT * FROM restaurant;

CREATE TABLE delivery_performance(
order_id VARCHAR(20),
actual_delivery_time_mins INT,
expected_delivery_time_mins INT,
distance_km DECIMAL(10,1)
);

SELECT * FROM delivery_performance;

CREATE TABLE order_items(
order_id VARCHAR(20),
item_id	VARCHAR(10),
menu_item_id VARCHAR(20),
restaurant_id VARCHAR(20),
quantity INT,
unit_price DECIMAL(10,2),
item_discount DECIMAL(10,2),
line_total DECIMAL(10,2)
);

SELECT * FROM order_items;

CREATE TABLE orders(
order_id VARCHAR(20),
customer_id VARCHAR(15),
restaurant_id VARCHAR(15),
delivery_partner_id VARCHAR(15),
order_timestamp TIMESTAMP, 
subtotal_amount DECIMAL(10,2),
discount_amount DECIMAL(10,2),
delivery_fee DECIMAL(10,2),
total_amount DECIMAL(10,2),
is_cod BOOLEAN,
is_cancelled BOOLEAN
);

SELECT * FROM orders;

CREATE TABLE ratings(
order_id VARCHAR(20),
customer_id VARCHAR(15),
restaurant_id VARCHAR(15),
rating DECIMAL(10,2),
review_text VARCHAR(50),
review_timestamp TIMESTAMP,
sentiment_score DECIMAL(10,2)
);

SELECT * FROM ratings;
