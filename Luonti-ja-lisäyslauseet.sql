-- HARJOITUSTYÖ OSA 2
-- Carita Kujala

PRAGMA foreign_keys = ON;

CREATE TABLE ohjaaja(
	otunnus INT,
	onimi VARCHAR(30),
	syntymaaika DATE,
	PRIMARY KEY (otunnus)
);

CREATE TABLE kategoria(
	ktunnus INT,
	knimi VARCHAR(30),
	PRIMARY KEY (ktunnus),
	UNIQUE (knimi)
);

CREATE TABLE sali(
	stunnus INT,
	snimi VARCHAR(30) NOT NULL,
	paikkalkm INT,
	PRIMARY KEY (stunnus),
	UNIQUE (snimi)
);

CREATE TABLE voi_ohjata(
	otunnus INT,
    rltunnus INT,
	PRIMARY KEY (otunnus, rltunnus),
	FOREIGN KEY (otunnus) REFERENCES ohjaaja(otunnus),
	FOREIGN KEY (rltunnus) REFERENCES rltunti(rltunnus)
);

CREATE TABLE ljtunti(
	rltunnus INT,
    otunnus INT,
    stunnus INT,
	viikonpaiva VARCHAR(20) NOT NULL,
	alkamisaika TIME(7),
	paattymisaika TIME(7),
	maxosallistujalkm INT,
	PRIMARY KEY (rltunnus, viikonpaiva, alkamisaika),
	FOREIGN KEY (rltunnus) REFERENCES rltunti(rltunnus),
	FOREIGN KEY (otunnus) REFERENCES ohjaaja(otunnus),
	FOREIGN KEY (stunnus) REFERENCES sali(stunnus)
);

CREATE TABLE rltunti(
	rltunnus INT,
	rlnimi VARCHAR(50) NOT NULL,
	kuvaus VARCHAR(50) NOT NULL,
	kesto INT,
	taso INT,
	ktunnus INT,
	PRIMARY KEY (rltunnus),
	UNIQUE (rlnimi),
	FOREIGN KEY (ktunnus) REFERENCES kategoria(ktunnus)
);


-- Kategoria
INSERT INTO kategoria
VALUES (11, 'Lihaskunto');

INSERT INTO kategoria
VALUES (12, 'Kehonhuolto');

INSERT INTO kategoria
VALUES (13, 'Spinning');


--Rltunti
INSERT INTO rltunti
VALUES (1, 'Muokkaus', 'Muokataan lihaksia', 45, 2, 11);

INSERT INTO rltunti
VALUES (2, 'Joogan perusteet', 'Opetellaan joogaan', 50, 1, 12);

INSERT INTO rltunti
VALUES (3, 'Jooga 1', 'Jatketaan joogaamista', 50, 2, 12);

INSERT INTO rltunti
VALUES (4, 'Pilates 1', 'Opetellaan pilatesta', 60, 2, 12);

INSERT INTO rltunti
VALUES (5, 'Spinning alkeet', 'Poljetaan', 60, 1, 13);

INSERT INTO rltunti
VALUES (6, 'Spinning pro', 'Raskaita osuuksia ja tiukkoja spurtteja', 80, 4, 13);


--Ohjaaja
INSERT INTO ohjaaja
VALUES (100, 'Elisa Markkanen', 1986-01-21);

INSERT INTO ohjaaja
VALUES (200, 'Eero Ilonen', 1988-03-14);

INSERT INTO ohjaaja
VALUES (300, 'Mikko Kontinen', 1977-11-01);


--Voi ohjata
INSERT INTO voi_ohjata
VALUES (100, 3);

INSERT INTO voi_ohjata
VALUES (100, 5);

INSERT INTO voi_ohjata
VALUES (100, 6);

INSERT INTO voi_ohjata
VALUES (200, 2);

INSERT INTO voi_ohjata
VALUES (200, 3);

INSERT INTO voi_ohjata
VALUES (200, 4);

INSERT INTO voi_ohjata
VALUES (300, 5);

INSERT INTO voi_ohjata
VALUES (300, 6);


--Sali
INSERT INTO sali
VALUES (10, 'Sali 1', 25);

INSERT INTO sali
VALUES (20, 'Spinning-sali', 20);

INSERT INTO sali
VALUES (30, 'Sali 3', 20);


--Ljtunti
INSERT INTO ljtunti
VALUES (3, 100, 30,'maanantai', '8:10', '9:00', 10);

INSERT INTO ljtunti
VALUES (3, 100, 10, 'maanantai', '13:00', '13:50', 15);

INSERT INTO ljtunti
VALUES (3, 100, 30, 'maanantai', '20:10', '21:00', 10);

INSERT INTO ljtunti
VALUES (3, 200, 10, 'tiistai', '8:10', '9:00', 15);

INSERT INTO ljtunti
VALUES (4, 200, 10, 'maanantai', '8:00', '9:00', 15);

INSERT INTO ljtunti
VALUES (6, 300, 20, 'maanantai', '7:00', '8:20', 20);

INSERT INTO ljtunti
VALUES (5, 300, 20, 'maanantai', '10:45', '11:45', 20);

INSERT INTO ljtunti
VALUES (6, 100, 20, 'perjantai', '14:00', '15:20', 20);