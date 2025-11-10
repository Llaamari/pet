-- Pet-tietokannan luonti
CREATE TABLE pet (
  name VARCHAR(20),
  owner VARCHAR(20),
  species VARCHAR(20),
  sex CHAR(1),
  birth DATE,
  death DATE
);

-- Alkuperäiset tietueet
INSERT INTO pet VALUES
('Puffball','Diane','hamster','f','1999-03-30',NULL),
('Fluffy','Harold','cat','f','1993-02-04',NULL),
('Claws','Gwen','cat','m','1994-03-17',NULL),
('Buffy','Harold','dog','f','1989-05-13',NULL),
('Fang','Benny','dog','m','1990-08-27',NULL),
('Bowser','Diane','dog','m','1979-08-31','1995-07-29'),
('Chirpy','Gwen','bird','f','1998-09-11',NULL),
('Whistler','Gwen','bird',NULL,'1997-12-09',NULL),
('Slim','Benny','snake','m','1996-04-29',NULL);

-- a) Poistot, päivitykset ja lisäykset
DELETE FROM pet WHERE name = 'Puffball';
UPDATE pet SET birth = '1998-08-31' WHERE name = 'Bowser';
UPDATE pet SET death = '2000-09-15' WHERE name = 'Chirpy';

-- Esimerkkikyselyt
SELECT DISTINCT owner FROM pet;
SELECT name FROM pet ORDER BY name ASC;
SELECT * FROM pet WHERE death IS NULL;
SELECT DISTINCT owner FROM pet WHERE owner LIKE 'H%';
SELECT name FROM pet WHERE name LIKE '%ff%';
SELECT name FROM pet WHERE name LIKE '____';
