-- Creation des tables
create table UTILISATEUR(
	id int PRIMARY KEY,
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
	idQuesttionnaire int PRIMARY KEY,
	titre varchar(30),
	idQ int,
	CONSTRAINT fk FOREIGN KEY (idQuesttionnaire) REFERENCES QUESTION(idQuestion));

create table STATSHISTORIQUE(
	idStats int PRIMARY KEY,
	intitule varchar(30),
	valeur int,
	date_maj DATETIME);

create table PROPOSITION(
	idProp int PRIMARY KEY,
	numero int,
	libelle varchar(30));

create table RJuste(
	idQuestion int PRIMARY KEY,
	numero int,
	CONSTRAINT fk FOREIGN KEY (idQuestion) REFERENCES QUESTION(idQuestion),
	CONSTRAINT fk FOREIGN KEY (numero) REFERENCES PROPOSITION(numero));

create table REPONSE(
	idR int PRIMARY KEY,
  	CONSTRAINT fk1 FOREIGN KEY (idR) REFERENCES PROPOSITION(idProp),
	dateR date);

-- drop table reponse;
-- drop table proposition;
-- drop table statshistorique;
-- drop table questionnaire;
-- drop table question;
-- drop table utilisateur;
-- drop table rjuste;

