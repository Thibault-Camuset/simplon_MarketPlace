DROP DATABASE IF EXISTS marketplace;

CREATE DATABASE marketplace;

USE marketplace;

DROP TABLE IF EXISTS brands;

CREATE TABLE brands
(
	brandCode INT PRIMARY KEY,
    brandName TINYTEXT,
    brandDescription TINYTEXT
);

DROP TABLE IF EXISTS categories;

CREATE TABLE categories
(
	categoryNumber INT PRIMARY KEY,
    categoryName TINYTEXT,
    categoryDescription TINYTEXT
);

DROP TABLE IF EXISTS vendors;

CREATE TABLE vendors
(
	vendorCode INT PRIMARY KEY,
    vendorName TINYTEXT,
    vendorDescription TINYTEXT
);

DROP TABLE IF EXISTS products;

CREATE TABLE products
(
	productCode VARCHAR(13) PRIMARY KEY,
    productName TINYTEXT,
    shortDescription TINYTEXT,
    longDescription TINYTEXT,
    brandCode INT,
    FOREIGN KEY(brandCode) REFERENCES brands(brandCode)
);

DROP TABLE IF EXISTS products_categories;

CREATE TABLE products_categories
(
	productCode VARCHAR(13),
    FOREIGN KEY(productCode) REFERENCES products(productCode),
    categoryNumber INT,
    FOREIGN KEY(categoryNumber) REFERENCES categories(categoryNumber),
    CONSTRAINT categoriesConstraint PRIMARY KEY(productCode, categoryNumber)
);

DROP TABLE IF EXISTS products_vendors;

CREATE TABLE products_vendors
(
	productCode VARCHAR(13),
    FOREIGN KEY(productCode) REFERENCES products(productCode),
    vendorCode INT,
    FOREIGN KEY(vendorCode) REFERENCES vendors(vendorCode),
    priceHT DECIMAL(10,2),
    shippingHT DECIMAL(10,2),
    stock INT,
    CONSTRAINT vendorsConstraint PRIMARY KEY(productCode, vendorCode)
);
