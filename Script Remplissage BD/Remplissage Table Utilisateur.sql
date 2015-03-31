-- Remplissage de la table Utilisateur.

--Création de la séquence de génération des Id de la table Utilisateur.
CREATE SEQUENCE Generateur_Id;

--Insertion des données dans la table Utilisateur

INSERT INTO Utilisateur VALUES (Generateur_Id.NextVal,1,'Aleixo','Philippe','pvieira','chamallow24',SYSDATE);
INSERT INTO Utilisateur VALUES (Generateur_Id.NextVal,1,'Galopin','Titouan','tits','chamallow25',SYSDATE);
INSERT INTO Utilisateur VALUES (Generateur_Id.NextVal,1,'Mensah Adjei','Felix','fadjei','chamallow26',SYSDATE);
INSERT INTO Utilisateur VALUES (Generateur_Id.NextVal,1,'Rosaz','Lucas','lucas.rosaz','chamallow27',SYSDATE);
INSERT INTO Utilisateur VALUES (Generateur_Id.NextVal,1,'Levêque','Adrien','ririiz','chamallow28',SYSDATE);
INSERT INTO Utilisateur VALUES (Generateur_Id.NextVal,0,'Rimbault','Victor','vrimb','chamallow29',SYSDATE);
INSERT INTO Utilisateur VALUES (Generateur_Id.NextVal,0,'Octavius','Romanus','roctav','chamallow30',SYSDATE);
INSERT INTO Utilisateur VALUES (Generateur_Id.NextVal,0,'Gingembre','Juliette','jujugimg','chamallow31',SYSDATE);