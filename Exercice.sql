--Exercice1

CREATE TABLE segment (
n_segment VARCHAR(10),
nom_segment VARCHAR (20)
);

CREATE TABLE salle (
n_salle VARCHAR(7),
nom_salle VARCHAR (20),
nb_poste VARCHAR(3),
n_segment VARCHAR(10)
);

CREATE TABLE poste (
PRIMARY KEY (n_poste),
n_poste VARCHAR (7),
nom_poste VARCHAR (20),
n_segment VARCHAR(10),
AD VARCHAR(2),
type_poste VARCHAR(20),
n_salle VARCHAR (7)
);



CREATE TABLE logiciel (
PRIMARY KEY (n_logiciel),
n_logiciel VARCHAR(5),
nom_logiciel VARCHAR(20),
date_achat DATE,
version VARCHAR (7),
type_logiciel VARCHAR(30)

);

CREATE TABLE installer (
id VARCHAR (3),
n_poste VARCHAR(7),
n_logiciel VARCHAR (5),
date_ins DATE
);

--Exercice2

INSERT INTO segment (n_segment, nom_segment) VALUES ('130.120.80', 'segment 80');
INSERT INTO segment (n_segment, nom_segment) VALUES('130.120.81', 'segment 81');
INSERT INTO segment (n_segment, nom_segment) VALUES( '130.120.82', 'segment 82');

INSERT INTO salle (n_salle, nom_salle, nb_poste, n_segment) VALUES ('S01', 'Salle 1', '3', '130.120.80');
INSERT INTO salle (n_salle, nom_salle, nb_poste, n_segment) VALUES ('S02', 'Salle 2', '2', '130.120.80');
INSERT INTO salle (n_salle, nom_salle, nb_poste, n_segment) VALUES ('S03', 'Salle 3', '2', '130.120.80');
INSERT INTO salle (n_salle, nom_salle, nb_poste, n_segment) VALUES ('S11', 'Salle 11', '2', '130.120.81');
INSERT INTO salle (n_salle, nom_salle, nb_poste, n_segment) VALUES ('S12', 'Salle 12', '1', '130.120.81');
INSERT INTO salle (n_salle, nom_salle, nb_poste, n_segment) VALUES ('S21', 'Salle 21', '2', '130.120.82');

INSERT INTO poste ( n_poste, nom_poste, n_segment, AD, type_poste, n_salle) VALUES ('P1', 'Poste 1', '130.120.80', '01', 'tx', 'S01');
INSERT INTO poste ( n_poste, nom_poste, n_segment, AD, type_poste, n_salle) VALUES ('P2', 'Poste 2', '130.120.80', '02', 'UNIX', 'S01');
INSERT INTO poste ( n_poste, nom_poste, n_segment, AD, type_poste, n_salle) VALUES ('P3', 'Poste 3', '130.120.80', '03', 'tx', 'S01');
INSERT INTO poste ( n_poste, nom_poste, n_segment, AD, type_poste, n_salle) VALUES ('P4', 'Poste 4', '130.120.80', '04', 'PCWS', 'S02');
INSERT INTO poste ( n_poste, nom_poste, n_segment, AD, type_poste, n_salle) VALUES ('P5', 'Poste 5', '130.120.80', '05', 'PCWS', 'S02');
INSERT INTO poste ( n_poste, nom_poste, n_segment, AD, type_poste, n_salle) VALUES ('P6', 'Poste 6', '130.120.80', '06', 'UNIX', 'S03');
INSERT INTO poste ( n_poste, nom_poste, n_segment, AD, type_poste, n_salle) VALUES ('P7', 'Poste 7', '130.120.80', '07', 'tx', 'S03');
INSERT INTO poste ( n_poste, nom_poste, n_segment, AD, type_poste, n_salle) VALUES ('P8', 'Poste 8', '130.120.81', '01', 'UNIX', 'S11');
INSERT INTO poste ( n_poste, nom_poste, n_segment, AD, type_poste, n_salle) VALUES ('P9', 'Poste 9', '130.120.81', '02', 'tx', 'S11');
INSERT INTO poste ( n_poste, nom_poste, n_segment, AD, type_poste, n_salle) VALUES ('P10', 'Poste 10', '130.120.81', '03', 'UNIX', 'S03');
INSERT INTO poste ( n_poste, nom_poste, n_segment, AD, type_poste, n_salle) VALUES ('P11', 'Poste 11', '130.120.82', '01', 'PCXP', 'S21');
INSERT INTO poste ( n_poste, nom_poste, n_segment, AD, type_poste, n_salle) VALUES ('P12', 'Poste 12', '130.120.82', '02', 'PCXP', 'S21');

INSERT INTO logiciel ( n_logiciel, nom_logiciel, date_achat, version, type_logiciel) VALUES ('log1', 'Oracle9i', '13/05/2021', 9.2, 'UNIX');
INSERT INTO logiciel ( n_logiciel, nom_logiciel, date_achat, version, type_logiciel) VALUES ('log2', 'Oracle10g', '15/09/2020', 10.1, 'UNIX');
INSERT INTO logiciel ( n_logiciel, nom_logiciel, date_achat, version, type_logiciel) VALUES ('log3', 'Sql Server', '12/04/2022', '2020SE' , 'PCXP');
INSERT INTO logiciel ( n_logiciel, nom_logiciel, date_achat, version, type_logiciel) VALUES ('log4', '4D', '03/06/2020', '2019.4', 'PCXP');
INSERT INTO logiciel ( n_logiciel, nom_logiciel, date_achat, version, type_logiciel) VALUES ('log5', 'Windev', '12/11/2021', 10, 'PCWS');
INSERT INTO logiciel ( n_logiciel, nom_logiciel, date_achat, version, type_logiciel) VALUES ('log6', 'Sql*Net', '13/05/2021', 2.5, 'UNIX');
INSERT INTO logiciel ( n_logiciel, nom_logiciel, date_achat, version, type_logiciel) VALUES ('log7', 'I.I.S', '12/04/2020', 6.0, 'PCXP');
INSERT INTO logiciel ( n_logiciel, nom_logiciel, date_achat, version, type_logiciel) VALUES ('log8', 'Autocad', '21/03/2022', 'AU2019', 'PCWS');

INSERT INTO installer ( id, n_poste, n_logiciel, date_ins) VALUES (1, 'P2', 'Log1', '15/05/2021');
INSERT INTO installer ( id, n_poste, n_logiciel, date_ins) VALUES (2, 'P2', 'Log2', '17/09/2020');
INSERT INTO installer ( id, n_poste, n_logiciel, date_ins) VALUES (3, 'P4', 'Log5', '30/05/2022');
INSERT INTO installer ( id, n_poste, n_logiciel, date_ins) VALUES (4, 'P4', 'Log6', '20/05/2021');
INSERT INTO installer ( id, n_poste, n_logiciel, date_ins) VALUES (5, 'P6', 'Log6', '20/05/2021');
INSERT INTO installer ( id, n_poste, n_logiciel, date_ins) VALUES (6, 'P6', 'Log1', '20/05/2021');
INSERT INTO installer ( id, n_poste, n_logiciel, date_ins) VALUES (7, 'P8', 'Log2', '19/05/2021');
INSERT INTO installer ( id, n_poste, n_logiciel, date_ins) VALUES (8, 'P8', 'Log6', '20/05/2021');
INSERT INTO installer ( id, n_poste, n_logiciel, date_ins) VALUES (9, 'P11', 'Log3', '20/04/2022');
INSERT INTO installer ( id, n_poste, n_logiciel, date_ins) VALUES (10, 'P12', 'Log4', '20/06/2020');
INSERT INTO installer ( id, n_poste, n_logiciel, date_ins) VALUES (11, 'P11', 'Log7', '20/04/2022');

--Exercice3

SELECT * from segment;
SELECT * from poste where type_poste = 'UNIX';
SELECT * from logiciel where type_logiciel = 'PCWS';
SELECT * from poste where n_segment = '130.120.80';
SELECT * from  poste where n_salle = 'S01';
SELECT * from  poste where n_salle = 'S03';


--Exercice4

CREATE TABLE Type (
Type_lp VARCHAR (10),
Nom_type VARCHAR (30)
);



INSERT INTO Type (type_lp, Nom_type) VALUES ('TX','Terminal X-Window');
INSERT INTO Type (type_lp, Nom_type) VALUES ('UNIX','Systeme Unix');
INSERT INTO Type (type_lp, Nom_type) VALUES ('PCXP','PC Windows XP');
INSERT INTO Type (type_lp, Nom_type) VALUES ('PCWS','PC Windows Server');
INSERT INTO Type (type_lp, Nom_type) VALUES ('NC','Network Computer');

ALTER TABLE TYPE ADD FOREIGN KEY (Type_lp) REFERENCES poste ;

SELECT type_poste
from poste
inner join type on type_poste = type_lp;

--Exercice 5

ALTER TABLE TYPE ADD FOREIGN KEY (Type_lp) REFERENCES logiciel ;

-- 1 lister tous les types de postes n'existant pas dans le parc informatique

--valeurs non existante

SELECT type_poste
from poste
right join type on type_poste = type_lp
where type_poste is null;

--2 Lister les types existant a la fois comme poste et comme logiciel

SELECT type_logiciel
from logiciel
full join poste
on n_logiciel = n_poste;

--3 Lister les types qui existent en tant que poste mais pas en tant que logiciel

SELECT type_poste
from poste
inner join type on type_poste = type_lp;

--4 lister les ip des postes qui contiennent le logiciel log6

SELECT n_logiciel
from logiciel
left join Poste
on n_poste = n_logiciel
where n_logiciel = 'log6';

--5 lister les ip des postes qui contiennent le logiciel de nom Oracle 9i

SELECT *
from logiciel
left join poste
on n_poste = nom_logiciel
where nom_logiciel = 'Oracle9i';

--6 Lister le nom des segments possédant exactement trois postes de type tx

ALTER TABLE segment add PRIMARY KEY (nom_segment);

ALTER TABLE poste add foreign key (n_segment) REFERENCES segment;

SELECT*
from segment
left join poste
on poste.n_segment = segment.n_segment
where type_poste = 'tx'
limit 3;

--7 Lister le nom des salles ou l'on peut trouver au moins un poste avec le logiciel Oracle 10g installé

SELECT *
from logiciel
right join poste
on logiciel.nom_logiciel = poste.n_poste;

--Exercice6

--Compter le nombre de poste de chaque type

SELECT COUNT (*)
from poste;

--Compter le nombre de logiciels installés par année

SELECT COUNT (*)
SELECT YEAR (date_achat);

