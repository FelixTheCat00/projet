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
	id int PRIMARY KEY,
	libelle varchar(30));

create table QUESTIONNAIRE(
	id int PRIMARY KEY,
	titre varchar(30),
	idQ int,
	CONSTRAINT fk FOREIGN KEY (idQ) REFERENCES QUESTION(id));

create table STATSHISTORIQUE(
	id int PRIMARY KEY,
	intitule varchar(30),
	valeur int);

create table PROPOSITION(
	id int PRIMARY KEY,
	ordre int,
	libelle varchar(30));

create table REPONSE(
	idR int PRIMARY KEY,
  	CONSTRAINT fk1 FOREIGN KEY (idR) REFERENCES PROPOSITION(id),
	dateR date);

-- drop table questionnaire;
-- drop table question;
-- drop table proposition;
-- drop table statshistorique;
-- drop table utilisateur;
-- drop table reponse;