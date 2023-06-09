DROP DATABASE IF EXISTS cardealership;

CREATE DATABASE cardealership;

USE cardealership;

CREATE TABLE dealerships (
dealership_id int auto_increment PRIMARY KEY NOT NULL,
name varchar(50) NOT NULL,
address varchar(50),
phone varchar(12)
);

CREATE TABLE vehicles (
vin varchar(17) PRIMARY KEY NOT NULL,
color varchar(15),
year int,
sold boolean
);

CREATE TABLE inventory (
dealership_id int AUTO_INCREMENT NOT NULL,
FOREIGN KEY(dealership_id) REFERENCES dealerships(dealership_id),
vin varchar(17) NOT NULL,
FOREIGN KEY(vin) REFERENCES vehicles(vin)
);

CREATE TABLE sales_contracts (
id int AUTO_INCREMENT PRIMARY KEY,
vin varchar(17),
FOREIGN KEY (vin) REFERENCES vehicles(vin)
); 

INSERT INTO dealerships(dealership_id, name, address, phone)
VALUES (1, "BlackBear Auto Sales", "123 park lane", "123-234-2345");
INSERT INTO vehicles (vin, color, year, sold)
VALUES ("12345678912345678", "red", 2010, true);
INSERT INTO inventory (dealership_id, vin)
VALUES (1, "12345678912345678");
INSERT INTO sales_contracts (id, vin)
VALUES (1, "12345678912345678");


INSERT INTO dealerships (dealership_id, name, address, phone)
VALUES (2, "Fast Car Auto Sales", "456 rose street", "123-345-4567");
INSERT INTO vehicles (vin, color, year, sold)
VALUES ("23456789123456789", "black", 2012, false);
INSERT INTO inventory (dealership_id, vin)
VALUES (2, "23456789123456789");
INSERT INTO sales_contracts (id, vin)
VALUES (2, "23456789123456789");







