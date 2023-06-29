CREATE DATABASE becode;
USE becode;

source students.sql; -- exécution du script students.sql se trouvant dans le même dossier que ce script-ci

SELECT * FROM students;

SELECT prenom FROM students;

SELECT prenom, datenaissance, school  FROM students;

SELECT * FROM students WHERE genre='F';

SELECT * FROM students WHERE school=(SELECT school FROM students WHERE nom='Addy');

SELECT prenom FROM students ORDER BY prenom DESC;
SELECT prenom FROM students ORDER BY prenom DESC LIMIT 2;

SELECT MAX(idStudent) + 1 INTO @nextId FROM students;
INSERT INTO students(prenom, nom, datenaissance, genre, school, idStudent) VALUES ('Ginette', 'Dalor', '1930-01-01', 'F', '1', @nextId);
SELECT * FROM students; -- checkpoint

UPDATE students SET prenom='Omer', genre='M' WHERE nom='Dalor';
SELECT * FROM students; -- checkpoint

DELETE FROM students WHERE idStudent='3';
SELECT * FROM students; -- checkpoint

SHOW COLUMNS FROM students; -- checkpoint
ALTER TABLE students MODIFY COLUMN school varchar(20);
DESCRIBE students; -- checkpoint
UPDATE students SET school=CASE WHEN School='1' THEN 'Liege' WHEN School='2' THEN 'Gent' ELSE school END;
SELECT * FROM students; -- checkpoint


