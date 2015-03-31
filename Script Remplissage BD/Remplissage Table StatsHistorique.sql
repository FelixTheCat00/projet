--Remplissage de la table StatsHistorique

----Création de la séquence de génération des Id de la table StatsHistorique
CREATE SEQUENCE Generateur_Id_StatsHistorique;

INSERT INTO StatsHistorique VALUES (Generateur_Id_StatsHistorique.NextVal,'nb_partie_joué',NULL,SYSDATE); --Nombre de partie jouer par un Utilisateur
INSERT INTO StatsHistorique VALUES (Generateur_Id_StatsHistorique.NextVal,'nb_reponse-correcte',NULL,SYSDATE); -- Nombre de reponse correcte d'un Utilisateur
INSERT INTO StatsHistorique VALUES (Generateur_Id_StatsHistorique.NextVal,'nb_reponse_fausse',NULL,SYSDATE); -- Nombre de reponse fausse d'un Utilisateur
INSERT INTO StatsHistorique VALUES (Generateur_Id_StatsHistorique.NextVal,'ratio_reponse',NULL,SYSDATE); -- Rapport entre le nombre de bonne reponse sur le nombre total de reponse(=nombre de partie joué*nombre de question par questionnaire)
INSERT INTO StatsHistorique VALUES (Generateur_Id_StatsHistorique.NextVal,'nb_question_repondu',NULL,SYSDATE); --Correspond au nombre de partie joué * le nombre de question par questionnaire
INSERT INTO StatsHistorique VALUES (Generateur_Id_StatsHistorique.NextVal,'temps_reponse_moyen',NULL,SYSDATE); --moyenne des temps de réponse d'un utilisateur
INSERT INTO StatsHistorique VALUES (Generateur_Id_StatsHistorique.NextVal,'temps_reponse_total',NULL,SYSDATE); -- Somme des temps de reponse de chaque question
INSERT INTO StatsHistorique VALUES (Generateur_Id_StatsHistorique.NextVal,'ratio_temps',NULL,SYSDATE); -- rapport entre le temps par reponse moyen sur le temps de reponse total d'un questionnnaire