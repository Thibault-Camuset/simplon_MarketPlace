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

A refaire;

INSERT INTO products (productCode, productName, shortDescription, longDescription, brandCode) VALUES ("0045496963071","The Legend of Zelda: Twilight Princess","","","1"),("0045496392246","The Legend of Zelda: The Wind Walker","","","1"),("0045496390129","Super Smash Bros. Melee","","","2"),("0045496391867","Final Fantasy: Crystal Chronicles","","","3"),("0045496393618","Baten Kaitos: Eternal Wings and the Lost Ocean","","","4"),("0045496392871","Tales of Symphonia","","","5"),("0045496390709","Metroid Prime","","","6"),("0045496390846","Luigi's Mansion","","","1"),("0045496390389","Super Mario Sunshine","","","1"),("3546430026298","Sonic Adventure 2 Battle","","","7"),("5055060950470","Viewtiful Joe","","","8"),("0045496962760","Fire Emblem: Path of Radiance","","","9"),("5030932032577","Medal of Honor Frontline","","","10"),("0045496391508","Mario Kart: Double Dash!!","","","1"),("0454963935266","Resident Evil 4","","","11"),("0045496960322","Animal Crossing","","","1"),("0045496390464 ","Star Fox Adventures","","","12"),("0045496391300","Soulcalibur II","","","5"),("3307210140906","Tom Clancy's Splinter Cell","","","14"),("3348542155527","Die Hard: Vandetta","","","15"),("0045496961350","Pokemon Colosseum","","","16"),("0045496391454","F-Zero GX","","","17"),("5030930046712","SSX On Tour","","","13"),("0045496394363","Mario Smash Football","","","1"),("5030930041977","FIFA Street 2","","","13"),("0742725262539","Dragon Ball Z: Budokai 2","","","18"),("3307210120984","XIII","","","19");

("4012927029534","Suikoden V","Dernier opus de la série légendaire, préquel au plus légendaire encore Suikoden II!","Tragédie et destin sont intimement liés autour de la légendaire Rune Solaire!</br>Sur les terres de Faléna, dans un pays prospère placé sous le joug matriarcat et sous la bienveillante puissance de la Rune Solaire, des troubles civils commencèrent à éclater, forçant la reine à se servir de la Rune Solaire afin de maîtriser le soulèvement... Mais à quel prix? Plongez en tant que prince dans une quête immense et éclaircissez les mystères entourant la Rune Solaire, les troubles civils, et les sombres intentions d'une puissance inconnue, dans la grande saga de Suikoden!","Konami"),
("5060073303946","Persona 3","L'opus le plus vendu de la saga sombre de Shin Megami Tensei!","De terribles créatures rôdent dans l'obscurité, s'attaquant à ceux qui osent s'aventurer dans l'heure sombre, une anomalie temporelle cachée entre deux jours. En tant que membre d'une confrérie étudiante secrète, vous devez manier votre force intérieure, Persona, et protéger l'humanité contre une fin imminente. Vivrez-vous assez longtemps pour voir un nouveau jour se lever?","Koei"),
("0711719473428","Dark Chronicle","Un des RPG les plus originaux et cultes de la console!","Dans un loingtain futur, un empereur cruel décide de remonter le temps pour éliminer tout ce qui pourrait s'opposer à son règne de terreur.</br>Dans le présent, un monde meurt. Une seule de ses villes a été épargnée. Mais dans cette ville, un jeune garçon découvre un secret qui va boulverser sa vie... et le cours de l'histoire...","Sony"),
("0711719116615","Tekken 5","Nouvel opus de la série culte de jeu de combat!","Le ninja affine ses réflexes, le boxeur serre ses poings, le catcheur étire ses muscles, l'assassin verouille sa cible... et le plus puissant des combattants de l'histoire de Tekken attend le vainqueur. Vengence et destruction seront au rendez-vous!</br>Le King of Iron First Tournament est de retour...","Namco"),
("0711719468721","Final Fantasy X","Le premier volet de la série phare de la série sur Playstation 2!","Le monde enchanteur de Spira vit sous la menace constante de Sin, une entité maléfique qui dévaste tout sur son passage et n'inspire qu'effroi aux populations sans défense.</br>Incarnez Tidus, jeune star de blitzball, et Yuna, talentueuse Invokeur, dans leur pèlerinage aux quatre coins de Spira. Leur quête a pour unique but de débarasser le monde de son pire ennemi... Mais sont-ils prêts à en payer le prix?</br>Seule l'Invocation Finale peut défaire Sin. La paix de Spira repose dorénavant entre vos mains.","Squaresoft")

("4250154420155","Manette Dualshock 2","","","Sony"),
("0711719102304","Carte Mémoire 8Mo","","","Sony"),
("0711719700005","Console Playstation 2","","","Sony"),
("0711719706403","Console Playstation 2 Slim","","","Sony"),
("7194801354691","Action Replay Max","","","Datel"),




INSERT INTO categories (categoryName) VALUES ("Jeu-Vidéo"),("Playstation 2"),("Console"),("Accessoire Console")


	
INSERT INTO vendors (vendorName, vendorDescription) VALUES ("Dominique Lassaut",`Dominique Lassaut s'engage à fournir à point fermé pour chaque client la qualité de service clientèle la plus profonde possible.`),("Richard Dupond","Richard Dupond spécialiste de la vente en ligne depuis 2005. Tous les envois sont suivis. Emballage professionnel. Service client réactif."),("Philippe Leblanc",`Vendeur professionnel depuis 2009, notre gamme s’étend sur le domaine des jeux vidéo, de la téléphonie et de la mobilité, la photographie, ainsi que tous les accessoires informatiques. Notre SAV gratuit et performant est une force en plus de nos prix. Nous vendons en France et à l'international.`),("Simon Kuthapel",`Vous mettrez la main sur le produit qui vous tente à prix réduit parmi les jeux présents dans notre boutique. Nous aimons réjouir nos consommateurs en leur permettant de faire d'importantes affaires. Vous trouverez certainement ce dont vous avez besoin grâce à nos nombreuses soldes et offres promotionnelles. Regroupez vos achats pour économiser sur les frais de port.`); 



INSERT INTO products_categories VALUES;
