# Pet Database
![MySQL](https://img.shields.io/badge/MySQL-4479A1.svg?style=for-the-badge&logo=mysql&logoColor=white)<br>
This repository contains SQL exercises for creating and managing a simple **Pet** database.  

## Overview
The database keeps track of pets, their owners, species, sex, and birth/death dates.  
The project demonstrates basic SQL commands including `CREATE`, `INSERT`, `UPDATE`, `DELETE`, and `SELECT`.

## Table Structure

```sql
CREATE TABLE pet (
  name VARCHAR(20),
  owner VARCHAR(20),
  species VARCHAR(20),
  sex CHAR(1),
  birth DATE,
  death DATE
);
```
## Example Data
```sql
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
```
## Example Queries
Data modifications
```sql
DELETE FROM pet WHERE name = 'Puffball';
UPDATE pet SET birth = '1998-08-31' WHERE name = 'Bowser';
UPDATE pet SET death = '2000-09-15' WHERE name = 'Chirpy';
```
Data retrieval
```sql
-- List all unique owners
SELECT DISTINCT owner FROM pet;

-- List pet names alphabetically
SELECT name FROM pet ORDER BY name ASC;

-- List all pets that are still alive
SELECT * FROM pet WHERE death IS NULL;

-- List all owners whose name starts with 'H'
SELECT DISTINCT owner FROM pet WHERE owner LIKE 'H%';

-- List pet names containing 'ff'
SELECT name FROM pet WHERE name LIKE '%ff%';

-- List pet names that have exactly 4 letters
SELECT name FROM pet WHERE name LIKE '____';
```
## How to Run
1. Open your MySQL terminal or Workbench.
2. Create or select your database:
   ```sql
   USE your_database_name;
   ```
3. Run the script:
   ```sql
   SOURCE pet.sql;
   ```
