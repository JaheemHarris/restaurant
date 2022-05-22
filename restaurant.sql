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
INSERT INTO produit (idcategorie,nom) VALUES (1,'Henakisoa sy carotte');	-- prd 3 --
INSERT INTO produit (idcategorie,nom) VALUES (1,'Hena''omby ritra');		-- prd 4 --
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


-- INSERT INTO detailsproduit(idproduit,idingredient,quantite) VALUES ();