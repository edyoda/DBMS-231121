USE squid_game;

CREATE TABLE disney_world
    (First_Name VARCHAR(10),
    Last_Name VARCHAR(10),
    Address VARCHAR(30),
    Age INT);

INSERT INTO disney_world VALUES
    ('Mickey','Mouse','123Apple',50);

SELECT * FROM disney_world;

INSERT INTO disney_world VALUES ('Donald','Mouse','123Apple',20),
    ('Donald','Duck','786 Mango Avenue',57);

SELECT * FROM disney_world;

SELECT Age FROM disney_world;

SELECT First_Name,Age FROM disney_world;

Select distinct First_Name from disney_world;

SELECT * FROM disney_world WHERE Age > 51

SELECT * FROM disney_world WHERE Age < 20;

SELECT * FROM disney_world WHERE Age = 20;

SELECT * FROM disney_world WHERE Age != 20;

SELECT * FROM disney_world WHERE Age >= 20;

SELECT * FROM disney_world WHERE Age > 20;

SELECT * FROM disney_world WHERE Age <= 57;

SELECT * FROM disney_world WHERE Age < 57;

SELECT * FROM disney_world WHERE Age > 27 AND Last_Name='Mouse';

SELECT * FROM disney_world WHERE Age > 27 OR Last_Name='Mouse';

SELECT * FROM disney_world WHERE NOT Age > 27 OR Last_Name='Mouse';

SELECT * FROM disney_world WHERE Age > 27 OR NOT Last_Name='Mouse';

SELECT * FROM disney_world WHERE Age BETWEEN 45 AND 60;

SELECT * FROM disney_world WHERE Age BETWEEN 50 AND 60;

SELECT * FROM disney_world WHERE Age BETWEEN 50 AND 57;

SELECT * FROM disney_world;

INSERT INTO disney_world VALUES 
    ('Mohit','Mojo','Washington Delhi',69),
    ('Rahul','Dey','Chambal Ki Ghati',29);

SELECT * FROM disney_world;

SELECT * FROM disney_world WHERE Last_Name LIKE 'Mo%';

SELECT * FROM disney_world WHERE First_Name LIKE '__h__';

SELECT * FROM disney_world WHERE Age  LIKE '_9';

INSERT INTO disney_world VALUES ('Ashish',NULL,NULL,NULL);

SELECT * FROM disney_world;

SELECT * FROM disney_world WHERE age IN (69,20,50);

SELECT * FROM disney_world WHERE Last_Name IN ('Mouse','Dey');

SELECT * FROM disney_world;

SELECT MIN(Age) FROM disney_world;

SELECT MAX(Age) FROM disney_world;

SELECT AVG(Age) FROM disney_world;

SELECT COUNT(Age) FROM disney_world;

SELECT COUNT(*) FROM disney_world;

SELECT SUM(Age) FROM disney_world;

SELECT * FROM disney_world WHERE Last_Name IS NULL;

SELECT * FROM disney_world;

DELETE FROM disney_world WHERE First_Name = 'Donald' AND Last_Name='Mouse';

SELECT * FROM disney_world;

DROP TABLE disney_world;

SELECT * FROM disney_world;

CREATE TABLE sales
    (Purchase_Number INT,
    Date_of_Purchase DATE,
    Customer_id INT,
    item_code VARCHAR (10));


INSERT INTO sales VALUES
    (1,'2021-01-21',1,'A_1'),
    (2,'2020-05-15',2,'A_2');

SELECT * FROM sales;

SELECT * FROM sales WHERE Date_of_Purchase > '2020-01-01';

SELECT * FROM sales WHERE Date_of_Purchase < '2020-01-01';

SELECT * FROM sales WHERE Date_of_Purchase < '2021-01-01';






















