USE classicmodels;

SELECT * FROM offices;

CREATE VIEW officesno AS
SELECT city,phone
FROM offices;

SELECT * FROM officesno;

DROP VIEW officesno;

SELECT city,phone AS mobile
FROM offices;

CREATE TABLE dance
(ID int, Name VARCHAR(10));

INSERT INTO dance VALUES
(1,'ARNOLD'),(2,'BOB'),(3,'CAT'),(4,'DOG');

SELECT * FROM dance;

CREATE TABLE music
(ID int, Name VARCHAR(10));

INSERT INTO music VALUES
(3,'CAT'),(4,'DOG'),(5,'LION'),(6,'BEAR');

SELECT * FROM music;

/*INNER JOIN*/
SELECT dance.ID,dance.NAME,music.NAME
FROM dance
JOIN
music ON dance.ID=music.ID;


/*LEFT JOIN*/
SELECT D.ID,M.ID FROM dance AS D
LEFT JOIN music AS M
ON D.ID = M.ID;

/*LEFT JOIN*/
SELECT D.ID,M.ID FROM music AS M
LEFT JOIN dance AS D
ON D.ID = M.ID;

SHOW TABLES;
DESCRIBE offices;

SELECT city,phone FROM offices;

SELECT city,phone,territory FROM offices;

SELECT city,phone,territory FROM offices WHERE territory='EMEA';

DELIMITER &&
CREATE PROCEDURE get_territory_offices()
BEGIN
SELECT city,phone,territory FROM offices WHERE territory='EMEA';
END &&
DELIMITER ;

CALL get_territory_offices();

DELIMITER &&
CREATE PROCEDURE apple()
BEGIN
SELECT city,phone FROM offices;
SELECT officecode FROM offices;
END &&
DELIMTER ;

CALL apple();

DELIMITER &&
CREATE PROCEDURE mango(IN x INT)
BEGIN
SELECT officecode FROM offices LIMIT x;
END &&
DELIMTER ;

CALL mango(2);

