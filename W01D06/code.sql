SHOW DATABASES;

USE SQUID_GAME;

SHOW TABLES;

CREATE TABLE khal_drogo(
	khaleesi VARCHAR(15) UNIQUE,
    no_of_dragons INT DEFAULT 3, weapons INT CHECK(weapons>=0),
    kingdoms INT NOT NULL);

DESCRIBE khal_drogo;

INSERT INTO khal_drogo VALUES
    ('denerys',4,100,NULL);

INSERT INTO khal_drogo VALUES ('denerys',4,100,3);

SELECT * FROM khal_drogo;

INSERT INTO khal_drogo VALUES ('denerys',40,1000,30);

SELECT * FROM khal_drogo;

INSERT INTO khal_drogo VALUES ('dany',40,-1,30);

INSERT INTO khal_drogo VALUES ('dany',40,0,30);

SELECT * FROM khal_drogo;

INSERT INTO khal_drogo(khaleesi,weapons,kingdoms) VALUES('mohini',99,7);

SELECT * FROM khal_drogo;

USE classicmodels;

DESCRIBE customers;

DESCRIBE orders;

SELECT orderNumber,status,customerNumber FROM orders;

SELECT customerNumber, customerName,phone FROM customers;

SHOW DATABASES;

CREATE DATABASE company2;

use company2;

CREATE TABLE employee (
    emp_id INT PRIMARY KEY,
    first_name VARCHAR(20),
    super_id INT,
    branch_id INT);

CREATE TABLE branch (
    branch_id INT PRIMARY KEY,
    branch_name VARCHAR(20),
    mgr_id INT,
    FOREIGN KEY(mgr_id) REFERENCES employee(emp_id) ON DELETE SET NULL);

ALTER TABLE employee
    ADD FOREIGN KEY(branch_id)
    REFERENCES branch(branch_id)
    ON DELETE SET NULL;

ALTER TABLE employee
   	ADD FOREIGN KEY(super_id)
    REFERENCES employee(emp_id)
    ON DELETE SET NULL;

DESCRIBE employee;

DESCRIBE branch;

INSERT INTO employee VALUES(100,'David',NULL,NULL);

SELECT * FROM employee;

INSERT INTO branch VALUES(1,'Kalward',100);

UPDATE employee
    SET branch_id = 1
    WHERE emp_id = 100;

SELECT * FROM employee;

SELECT * FROM branch;

DELETE FROM employee WHERE emp_id = 100;

SELECT * FROM employee;

SELECT * FROM branch;

