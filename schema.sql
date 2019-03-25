CREATE DATABASE Bamazon;

use Bamazon;

CREATE TABLE products (
	id INTEGER AUTO_INCREMENT NOT NULL,
	product_name VARCHAR(100),
	department_name VARCHAR(100),
    price INTEGER, 
    stock_quantity INTEGER, 
    PRIMARY KEY (id)
);

INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES("Logitech Wireless Keyboard and Mouse", "Electronics", 39.99, 2000);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES("Cook N Home 12 piece Stainless Steel Cookware Set", "Kitchenware", 54.89, 2000);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES("Jurassic Park Blu-Ray", "Electronics", 13, 2000);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES("Aztec Secret - Indian Healing Clay - 1lb", "Moisturizer", 10.95, 800);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES("2004-2006 Scion XB Tail Light - Passenger Side", "Car Parts", 53.18, 50);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES("Centrum Multivitamin", "Health", 10.89, 1000);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES("Orgain Organic Protein Powder - Vanilla", "Health", 26.99, 1500);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES("Garnier Fructis Pure Clean Shampoo", "Shampoo", 2.79, 2000);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES("SHW L-Shaped Home Office Corner Desk Wood Top, Espresso", "Appliances", 88.87, 550);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES("AA Batteries, 24 Count - Energizer MAX Premium Alkaline", "Batteries", 12.99, 3000);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES("Patton 20-inch High Velocity Fan", "Fan", 77.29, 600);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES("BLACK+DECKER 12V MAX Cordless Drill/Driver", "Power Tools", 29.38, 700);

SELECT * FROM  products;

SELECT products.id FROM products WHERE products.id = 1


UPDATE products SET products.stock_quantity = 500 WHERE products.id = 1
