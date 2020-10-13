DROP DATABASE IF EXISTS marketplace;

CREATE DATABASE marketplace;

USE marketplace;

DROP TABLE IF EXISTS brands;

CREATE TABLE brands
(
	brandCode INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    brandName TINYTEXT
);

DROP TABLE IF EXISTS categories;

CREATE TABLE categories
(
	categoryNumber INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    categoryName TINYTEXT
);

DROP TABLE IF EXISTS vendors;

CREATE TABLE vendors
(
	vendorCode INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    vendorName TINYTEXT,
    vendorDescription TINYTEXT
);

DROP TABLE IF EXISTS products;

CREATE TABLE products
(
	productCode VARCHAR(13) PRIMARY KEY,
    productName TINYTEXT,
    shortDescription TINYTEXT,
    longDescription TEXT,
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






INSERT INTO brands (brandName) VALUES ("Nintendo"),("HAL Labs"),("Square-Enix"),("Monolith Soft"),("Namco"),("Retro Studio"),("Sonic Team"),("Clover Studio"),("Intelligent Systems"),("Dreamworks Games"),("Capcom"),("Rare Ltd."),("EA Canada"),("Ubisoft Shanghai"),("Bits Studios"),("Genius Sonority Inc."),("Amusement Vision"),("Pyramid"),("Ubisoft Paris");



INSERT INTO products (productCode, productName, shortDescription, longDescription, brandCode) VALUES ("0045496963071","The Legend of Zelda: Twilight Princess","","","1"),("0045496392246","The Legend of Zelda: The Wind Walker","","","1"),("0045496390129","Super Smash Bros. Melee","","","2"),("0045496391867","Final Fantasy: Crystal Chronicles","","","3"),("0045496393618","Baten Kaitos: Eternal Wings and the Lost Ocean","","","4"),("0045496392871","Tales of Symphonia","","","5"),("0045496390709","Metroid Prime","","","6"),("0045496390846","Luigi's Mansion","","","1"),("0045496390389","Super Mario Sunshine","","","1"),("3546430026298","Sonic Adventure 2 Battle","","","7"),("5055060950470","Viewtiful Joe","","","8"),("0045496962760","Fire Emblem: Path of Radiance","","","9"),("5030932032577","Medal of Honor Frontline","","","10"),("0045496391508","Mario Kart: Double Dash!!","","","1"),("0454963935266","Resident Evil 4","","","11"),("0045496960322","Animal Crossing","","","1"),("0045496390464 ","Star Fox Adventures","","","12"),("0045496391300","Soulcalibur II","","","5"),("3307210140906","Tom Clancy's Splinter Cell","","","14"),("3348542155527","Die Hard: Vandetta","","","15"),("0045496961350","Pokemon Colosseum","","","16"),("0045496391454","F-Zero GX","","","17"),("5030930046712","SSX On Tour","","","13"),("0045496394363","Mario Smash Football","","","1"),("5030930041977","FIFA Street 2","","","13"),("0742725262539","Dragon Ball Z: Budokai 2","","","18"),("3307210120984","XIII","","","19");




INSERT INTO categories (categoryName) VALUES ("RPG"),("Plateforme"),("FPS");



	
INSERT INTO vendors (vendorName, vendorDescription) VALUES ("Dominique Lassaut",`Dominique Lassaut s'engage à fournir à point fermé pour chaque client la qualité de service clientèle la plus profonde possible.`),("Richard Dupond","Richard Dupond spécialiste de la vente en ligne depuis 2005. Tous les envois sont suivis. Emballage professionnel. Service client réactif."),("Philippe Leblanc",`Vendeur professionnel depuis 2009, notre gamme s’étend sur le domaine des jeux vidéo, de la téléphonie et de la mobilité, la photographie, ainsi que tous les accessoires informatiques. Notre SAV gratuit et performant est une force en plus de nos prix. Nous vendons en France et à l'international.`),("Simon Kuthapel",`Vous mettrez la main sur le produit qui vous tente à prix réduit parmi les jeux présents dans notre boutique. Nous aimons réjouir nos consommateurs en leur permettant de faire d'importantes affaires. Vous trouverez certainement ce dont vous avez besoin grâce à nos nombreuses soldes et offres promotionnelles. Regroupez vos achats pour économiser sur les frais de port.`); 


