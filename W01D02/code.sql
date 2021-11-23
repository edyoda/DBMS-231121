CREATE DATABASE SQUID_GAME;

SHOW DATABASES;

USE SQUID_GAME

CREATE TABLE
    student(student_id INT,
    Name VARCHAR(20),
    Major VARCHAR(20)
    );

SHOW TABLES;

INSERT INTO student VALUES
    (2,'Yogender Singh','Mechatronics'),
    (3,'Harish Kota','AllenReso'),
    (4,'John Cena','Invisibility'),
    (5,'Rahul Damn','illuminati'),
    (6,'Binod','YoutubeComments');

SELECT * FROM student;

SELECT Name FROM student;