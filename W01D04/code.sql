source location_to_classic_file/classic.sql

SHOW DATABASES;

USE classicmodels;

SHOW TABLES;

SELECT * FROM employees;

DESCRIBE employees;

SELECT employeeNumber,firstName,reportsTo from employees;

SELECT employeeNumber,firstName,reportsTo FROM employees ORDER BY reportsTo;

SELECT employeeNumber,firstName,reportsTo FROM employees ORDER BY reportsTo DESC;

SELECT employeeNumber,firstName,reportsTo FROM employees ORDER BY reportsTo ASC;

SELECT DISTINCT reportsTo from employees;

SELECT reportsTo, COUNT(firstName) FROM employees GROUP BY reportsTo;

SHOW TABLES;

DESCRIBE products;

SELECT productLine,productName FROM products;

SELECT productLine,COUNT(productName) FROM products GROUP BY productLine;

SELECT productLine,productName,buyPrice FROM products;

SELECT productLine,SUM(buyPrice) FROM products GROUP BY productLine;

SELECT productLine,MAX(buyPrice),MIN(buyPrice),SUM(buyPrice) FROM products GROUP BY productLine;

SELECT productLine,MAX(buyPrice),MIN(buyPrice),SUM(buyPrice),COUNT(buyPrice) FROM products GRO
UP BY productLine;

SELECT productLine,MAX(buyPrice),MIN(buyPrice),SUM(buyPrice),COUNT(buyPrice) FROM products GROUP BY productLine LIMIT 3;

SELECT productLine,MAX(buyPrice),MIN(buyPrice),SUM(buyPrice),COUNT(buyPrice) FROM products GROUP BY productLine LIMIT 3 OFFSET 3;

SELECT productLine,MAX(buyPrice),MIN(buyPrice),SUM(buyPrice),COUNT(buyPrice) FROM products GROUP BY productLine LIMIT 3 OFFSET 2;

SELECT productLine,MAX(buyPrice),MIN(buyPrice),SUM(buyPrice),COUNT(buyPrice) FROM products GROUP BY productLine LIMIT 2 OFFSET 2;

USE SQUID_GAME;

SHOW TABLES;

SELECT * FROM SALES;

ALTER TABLE SALES ADD CustomerName VARCHAR(20) AFTER Customer_id;

SELECT * FROM SALES;

ALTER TABLE SALES DrOp cOlUmN ITEM_CODE;

SELECT * FROM SALES;

UPDATE sales SET CustomerName = 'Datta Sai' where Purchase_Number=1;

SELECT * FROM SALES;

UPDATE sales SET CustomerName = 'Somesh Choudhary' where Purchase_Number=2;

SELECT * FROM SALES;

UPDATE sales SET CustomerName = 'Not found' where Purchase_Number IN (1,2);

SELECT * FROM SALES

