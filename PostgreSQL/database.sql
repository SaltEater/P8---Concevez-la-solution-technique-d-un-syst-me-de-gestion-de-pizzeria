/*-- Ajout des utilisateurs --
INSERT INTO public.Utilisateur(id, civilite, nom, prenom,email,telephone,motdepasse, role)
VALUES (0, 0, 'Smith', John', 'john.smith@gmail.com', '0123456789', 'azerty', 4);

INSERT INTO public.utilisateur(id, civilite, nom, prenom,email,telephone,motdepasse, role)
VALUES (13, 0, 'Dubois', 'Martin', 'martin.dubois@gmail.com', '9876543210', 'mdp', 4);

-- Ajout des adresses --
INSERT INTO public.adresse(id, utilisateurid, numerovoie, typevoie, nomvoie, codepostal, ville, mentionscomplémentaires)
VALUES (1, 0, 1, 'rue', 'de Rivoli', 750001, 'Paris', 'code porte : XXXX');

INSERT INTO public.adresse(id, utilisateurid, numerovoie, typevoie, nomvoie, codepostal, ville, mentionscomplémentaires)
VALUES (14, 13, 12, 'quai', 'du Louvre', 750001, 'Paris', 'code portail : A2346');

-- Ajout des produits --
INSERT INTO public.produit(id, nom, composition, photo)
VALUES (11, '4 fromages', 'chèvre, mozarella, parmesan, gorgonzola', 'url');

INSERT INTO public.produit(id, nom, composition, photo)
VALUES (24, 'Reine', 'jambon, champignon, gruyère', 'url pizza reine');

-- Ajout des etablissements --
INSERT INTO public.etablissement(id, adresseid, nom, telephone, email)
VALUES (4, 1, 'OC Pizza', '0139620975', 'oc-pizza@gmail.com');

INSERT INTO public.etablissement(id, adresseid, nom, telephone, email)
VALUES (17, 14, 'Pizza Paris', '0656732178', 'pizza-paris@gmail.com');

-- Ajout des catalogues --
INSERT INTO public.catalogue(id, prixht, tva, produitid, etablissementid)
VALUES (2, 5, 0.05, 11, 4);

INSERT INTO public.catalogue(id, prixht, tva, produitid, etablissementid)
VALUES (15, 8, 0.05, 24, 17);

-- Ajout des commandes --
INSERT INTO public.commande(id, utilisateurid, adresseid, statut, date, paiementeffectue, montantttc, modedepaiement)
VALUES (3, 0, 1, 0, '2020-06-25 15:00', TRUE, 12, 2);

INSERT INTO public.commande(id, utilisateurid, adresseid, statut, date, paiementeffectue, montantttc, modedepaiement)
VALUES (16, 13, 14, 1, '2020-07-09 09:00', TRUE, 25, 2);

-- Ajout des ingredients --
INSERT INTO public.ingredient(id, nom, unite)
VALUES (5, 'tomate', 'kg');

INSERT INTO public.ingredient(id, nom, unite)
VALUES (18, 'champignon', 'kg');

-- Ajout des lignes de commandes --
INSERT INTO public.lignedecommande(id, quantite, prixunitaireht, tva, produitid, commandeid)
VALUES (6, 1, 10, 0.05, 11, 3);

INSERT INTO public.lignedecommande(id, quantite, prixunitaireht, tva, produitid, commandeid)
VALUES (19, 2, 10, 0.05, 24, 16);

-- Ajout des paniers --
INSERT INTO public.panier(id, utilisateurid, date, livraison, montantttc)
VALUES (9, 0, '2020-06-25 12:00', FALSE, 5,25);

INSERT INTO public.panier(id, utilisateurid, date, livraison, montantttc)
VALUES (22, 13, '2020-07-09 07:00', FALSE, 27.25);

-- Ajout des lignes de panier --
INSERT INTO public.lignedepanier(id, quantite, prixht, tva, produitid, panierid)
VALUES (7, 1, 7, 0.05, 11, 9);

INSERT INTO public.lignedepanier(id, quantite, prixht, tva, produitid, panierid)
VALUES (20, 2, 6, 0.05, 24, 22);

-- Ajout des lignes d'ingrédients --
INSERT INTO public.ligneingredient(id, quantite, produitid, ingredientid)
VALUES (8, 4, 11, 5);

INSERT INTO public.ligneingredient(id, quantite, produitid, ingredientid)
VALUES (21, 4, 24, 18);

-- Ajout des préparations --
INSERT INTO public.preparation(id, produitid, recette)
VALUES (10, 11, '30g de parmesan, 30g de chèvre, 30g de gorgonzola, 30g de mozarella');

INSERT INTO public.preparation(id, produitid, recette)
VALUES (23, 24, '30g de parmesan, 150g de jambon, 100g de jambon, 100g de gruyère');

-- Ajout des stocks --
INSERT INTO public.stock(id, quantite, ingredientid, etablissementid)
VALUES (12, 2, 5, 4);

INSERT INTO public.stock(id, quantite, ingredientid, etablissementid)
VALUES (25, 15, 18, 17);*/

-- requetes --
SELECT u FROM utilisateur u, commande c WHERE u.id = c.utilisateurid;

SELECT utilisateur FROM utilisateur WHERE nom = 'Dubois';

SELECT commande FROM utilisateur u, commande WHERE nom = 'Dubois' AND utilisateurid = u.id;


