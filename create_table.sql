-- Creation des tables
create table UTILISATEUR(
	idUser int PRIMARY KEY,
	estAdmin int default 0,
	nom varchar(30) NOT NULL,
	prenom varchar(30) NOT NULL,
	login varchar(30) NOT NULL UNIQUE,
	mdp varchar(30) NOT NULL,
	dateInscription date);

create table QUESTION(
	idQuestion int PRIMARY KEY,
	libelle varchar(30));

create table QUESTIONNAIRE(
	idQuestionnaire int PRIMARY KEY,
	titre varchar(30),
	idUser int,
	CONSTRAINT fk5 FOREIGN KEY (idUser) REFERENCES UTILISATEUR(idUser));

create table QUESTION_QUESTIONNAIRE(
	idQQ int PRIMARY KEY,
  idQuestionnaire int,
	idQuestion int,
	ordre int,
	CONSTRAINT fk6 FOREIGN KEY (idQuestionnaire) REFERENCES QUESTIONNAIRE(idQuestionnaire),
	CONSTRAINT fk7 FOREIGN KEY (idQuestion) REFERENCES QUESTION(idQuestion));

create table STATS_HISTORIQUE(
	idStats int PRIMARY KEY,
	intitule varchar(30),
	valeur int,
<<<<<<< HEAD
	dateSynchro date);
=======
	date_maj DATETIME);
>>>>>>> origin/master

create table PROPOSITION(
	idProp int,
	idQuestion int,
	ordre int,
	vrai int,
	libelle varchar(30),
	CONSTRAINT pk PRIMARY KEY (idProp),
	CONSTRAINT fk4 FOREIGN KEY (idQuestion) REFERENCES QUESTION(idQuestion));

create table REPONSE(
	idR int PRIMARY KEY,
	dateR date,
	idProp int,
	idUser int,
	ordre int,
	libelle varchar(30),
	idQuestionnaire int,
  	CONSTRAINT fk1 FOREIGN KEY (idProp) REFERENCES PROPOSITION(idProp),
  	CONSTRAINT fk2 FOREIGN KEY (idUser) REFERENCES UTILISATEUR(idUser),
  	CONSTRAINT fk3 FOREIGN KEY (idQuestionnaire) REFERENCES QUESTIONNAIRE(idQuestionnaire));

<<<<<<< HEAD

-- drop table question_questionnaire;
-- drop table reponse;
-- drop table proposition;
-- drop table questionnaire;
-- drop table question;
-- drop table stats_historique;
-- drop table utilisateur;
=======
-- drop table reponse;
-- drop table proposition;
-- drop table statshistorique;
-- drop table questionnaire;
-- drop table question;
-- drop table utilisateur;
-- drop table rjuste;

>>>>>>> origin/master
