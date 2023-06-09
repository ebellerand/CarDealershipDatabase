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
dealership_id int NOT NULL,
vin varchar(17) NOT NULL
);

CREATE TABLE `sales contracts` (
id int AUTO_INCREMENT PRIMARY KEY,
vin varchar(17),
FOREIGN KEY (vin) REFERENCES vehicles(vin)
); 

INSERT INTO dealerships d





