CREATE TABLE categorie(
	id SERIAL PRIMARY KEY NOT NULL,
	nom VARCHAR(80)
);

INSERT INTO categorie (nom) VALUES ('Plat'); 	-- cat 1 --
INSERT INTO categorie (nom)	VALUES ('Dessert');		-- cat 2 --
INSERT INTO categorie (nom)	VALUES ('Boisson'); 	-- cat 3 --

CREATE TABLE ingredient(
	id SERIAL PRIMARY KEY NOT NULL,
	nom VARCHAR(80)
);

INSERT INTO ingredient (nom) VALUES ('Carotte');	-- ingr 1 --
INSERT INTO ingredient (nom) VALUES ('Patte'); 		-- ingr 2 --
INSERT INTO ingredient (nom) VALUES ('Oeuf'); 		-- ingr 3 --
INSERT INTO ingredient (nom) VALUES ('Fromage'); 	-- ingr 4 --
INSERT INTO ingredient (nom) VALUES ('Tomate'); 	-- ingr 5 --
INSERT INTO ingredient (nom) VALUES ('Oignon'); 	-- ingr 6 --
INSERT INTO ingredient (nom) VALUES ('Crevette'); 	-- ingr 7 --
INSERT INTO ingredient (nom) VALUES ('Riz'); 		-- ingr 8 --
INSERT INTO ingredient (nom) VALUES ('Farine');		-- ingr 9 --
INSERT INTO ingredient (nom) VALUES ('Viande de boeuf');	-- ingr 10 --
INSERT INTO ingredient (nom) VALUES ('Viande de porc');		-- ingr 11 --
INSERT INTO ingredient (nom) VALUES ('Viande de poulet');	-- ingr 12 --
INSERT INTO ingredient (nom) VALUES ('Orange');				-- ingr 13 --
INSERT INTO ingredient (nom) VALUES ('Raisin');				-- ingr 14 --
INSERT INTO ingredient (nom) VALUES ('Citron');				-- ingr 15 --
INSERT INTO ingredient (nom) VALUES ('Coco');				-- ingr 16 --
INSERT INTO ingredient (nom) VALUES ('Banane');				-- ingr 17 --
INSERT INTO ingredient (nom) VALUES ('Lait');				-- ingr 18 --


CREATE TABLE stock(
	id SERIAL PRIMARY KEY NOT NULL,
	idingredient INT,
	entree DECIMAL,
	sortie DECIMAL,
	prix DECIMAL,
	datemouvement DATE,
	FOREIGN KEY (idingredient) REFERENCES ingredient(id)
);

-- INSERT INTO stock(idingredient,entree,sortie,prix,datemouvement) VALUES (idingredient,entree,sortie,prix,datemouvement);


CREATE TABLE produit(
	id SERIAL PRIMARY KEY NOT NULL,
	idcategorie INT,
	nom VARCHAR(80),
	FOREIGN KEY (idcategorie) REFERENCES categorie(id)
);

INSERT INTO produit (idcategorie,nom) VALUES (1,'Riz cantonais');	-- prd 1 --
INSERT INTO produit (idcategorie,nom) VALUES (1,'Pizza crevette');	-- prd 2 --
INSERT INTO produit (idcategorie,nom) VALUES (1,'Henakisoa sy caroty');	-- prd 3 --
INSERT INTO produit (idcategorie,nom) VALUES (1,'Henomby ritra');		-- prd 4 --
INSERT INTO produit (idcategorie,nom) VALUES (1,'Poulet sauté');			-- prd 5 --

INSERT INTO produit (idcategorie,nom) VALUES (2,'Salade de fruit');	-- prd 6 --
INSERT INTO produit (idcategorie,nom) VALUES (2,'Tokon''akondro');	-- prd 7 --
INSERT INTO produit (idcategorie,nom) VALUES (2,'Yaourt maison');	-- prd 8 --

INSERT INTO produit (idcategorie,nom) VALUES (3,'Jus d''orange');	-- prd 9 --
INSERT INTO produit (idcategorie,nom) VALUES (3,'Jus de raisin');	-- prd 10 --
INSERT INTO produit (idcategorie,nom) VALUES (3,'Jus de coco');		-- prd 11 --


CREATE TABLE detailsproduit(
	id SERIAL PRIMARY KEY NOT NULL,
	idproduit INT,
	idingredient INT,
	quantite DECIMAL,
	FOREIGN KEY (idproduit) REFERENCES produit(id),
	FOREIGN KEY (idingredient) REFERENCES ingredient(id)
);


-- Riz cantonais
INSERT INTO detailsproduit(idproduit,idingredient,quantite) VALUES (1,1,50);
INSERT INTO detailsproduit(idproduit,idingredient,quantite) VALUES (1,3,1);
INSERT INTO detailsproduit(idproduit,idingredient,quantite) VALUES (1,8,150);
INSERT INTO detailsproduit(idproduit,idingredient,quantite) VALUES (1,12,100);

-- Pizza crevette
INSERT INTO detailsproduit(idproduit,idingredient,quantite) VALUES (2,9,200);
INSERT INTO detailsproduit(idproduit,idingredient,quantite) VALUES (2,7,100);
INSERT INTO detailsproduit(idproduit,idingredient,quantite) VALUES (2,4,50);
INSERT INTO detailsproduit(idproduit,idingredient,quantite) VALUES (2,5,20);
INSERT INTO detailsproduit(idproduit,idingredient,quantite) VALUES (2,6,20);

-- Henakisoa sy caroty
INSERT INTO detailsproduit(idproduit,idingredient,quantite) VALUES (3,11,100);
INSERT INTO detailsproduit(idproduit,idingredient,quantite) VALUES (3,8,150);
INSERT INTO detailsproduit(idproduit,idingredient,quantite) VALUES (3,1,20);

-- Henomby ritra
INSERT INTO detailsproduit(idproduit,idingredient,quantite) VALUES (4,8,150);
INSERT INTO detailsproduit(idproduit,idingredient,quantite) VALUES (4,10,150);
INSERT INTO detailsproduit(idproduit,idingredient,quantite) VALUES (4,5,20);

-- Poulet sauté
INSERT INTO detailsproduit(idproduit,idingredient,quantite) VALUES (5,8,150);
INSERT INTO detailsproduit(idproduit,idingredient,quantite) VALUES (5,12,150);
INSERT INTO detailsproduit(idproduit,idingredient,quantite) VALUES (5,5,20);

-- Salade de fruit
INSERT INTO detailsproduit(idproduit,idingredient,quantite) VALUES (6,13,2);
INSERT INTO detailsproduit(idproduit,idingredient,quantite) VALUES (6,14,50);
INSERT INTO detailsproduit(idproduit,idingredient,quantite) VALUES (6,17,2);

-- Tokon'akondro
INSERT INTO detailsproduit(idproduit,idingredient,quantite) VALUES (7,17,5);

-- Yaourt maison
INSERT INTO detailsproduit(idproduit,idingredient,quantite) VALUES (8,18,150);

-- Jus d'orange
INSERT INTO detailsproduit(idproduit,idingredient,quantite) VALUES (9,13,2);


-- Jus de raisin
INSERT INTO detailsproduit(idproduit,idingredient,quantite) VALUES (10,14,20);

-- Jus de coco
INSERT INTO detailsproduit(idproduit,idingredient,quantite) VALUES (11,16,1);


CREATE TABLE emplacement(
	id SERIAL PRIMARY KEY NOT NULL,
	numero VARCHAR(30)
);

INSERT INTO emplacement(numero) VALUES ('Table 1');
INSERT INTO emplacement(numero) VALUES ('Table 2');
INSERT INTO emplacement(numero) VALUES ('Table 3');

CREATE TABLE serveur(
	id SERIAL PRIMARY KEY NOT NULL,
	nom VARCHAR(60)
);

INSERT INTO serveur(nom)  VALUES('Jaheem');
INSERT INTO serveur(nom)  VALUES('Tommy');
INSERT INTO serveur(nom)  VALUES('Mahandry');
INSERT INTO serveur(nom)  VALUES('Angela');

CREATE TABLE commande(
	id SERIAL PRIMARY KEY NOT NULL,
	idEmplacement INT,
	dateCommande DATE,
	montant DECIMAL,
	etat INT,
	FOREIGN KEY (idEmplacement) REFERENCES emplacement(id)
);

-- etat - 0 commandee
-- etat - 1 fabriquee
-- etat - 2 livree

CREATE TABLE detailscommande(
	id SERIAL PRIMARY KEY NOT NULL,
	idCommande INT,
	idProduit INT,
	quantite DECIMAL,
	FOREIGN KEY (idCommande) REFERENCES commande(id),
	FOREIGN KEY (idproduit) REFERENCES produit(id)
);

CREATE TABLE moyenPaiement(
	id SERIAL PRIMARY KEY NOT NULL,
	nom VARCHAR(40)
);

INSERT INTO moyenPaiement (nom) VALUES ('Cheque');
INSERT INTO moyenPaiement (nom) VALUES ('Espece');

CREATE TABLE paiement(
	id SERIAL PRIMARY KEY NOT NULL,
	idCommande INT,
	idMoyenPaiement INT,
	montant DECIMAL,
	datepaiement DATE,
	FOREIGN KEY (idCommande) REFERENCES commande(id),
	FOREIGN KEY (idMoyenPaiement) REFERENCES moyenPaiement(id)
);