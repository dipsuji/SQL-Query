SELECT * FROM `student-database`.student_table;
SELECT name, roll_no FROM `student-database`.student_table;
SELECT DISTINCT roll_no FROM `student-database`.student_table;
SELECT  roll_no, name FROM `student-database`.student_table WHERE roll_no<99998;
SELECT  roll_no, name FROM `student-database`.student_table WHERE roll_no<99998 AND age<28;
SELECT  roll_no, name FROM `student-database`.student_table WHERE roll_no<99998 OR age<28;
SELECT  roll_no, name FROM `student-database`.student_table WHERE  NOT age<25;
SELECT  age, name FROM `student-database`.student_table WHERE  NOT age<25 ORDER BY age;
SELECT  roll_no, name FROM `student-database`.student_table  ORDER BY roll_no DESC;

INSERT INTO `student-database`.student_table (name,  age, roll_no)
VALUES ("Mike", 34, 98989) ;

SELECT sr_no, name
FROM `student-database`.student_table
WHERE adress IS NULL;

SELECT sr_no, name
FROM `student-database`.student_table
WHERE adress IS NOT NULL;

UPDATE `student-database`.student_table
SET name = "Jhon1"
WHERE sr_no = 7;

UPDATE `student-database`.student_table
SET name = "Sora"
WHERE sr_no = 8;

DELETE FROM `student-database`.techer_table
WHERE ID = 3;

SELECT MAX(address) FROM `student-database`.techer_table;
SELECT MIN(address) FROM `student-database`.techer_table;

SELECT * FROM `student-database`.techer_table LIMIT 3;

SELECT MIN(salary) AS smallesalary
FROM `student-database`.techer_table;

SELECT MAX(salary) AS bigessalary
FROM `student-database`.techer_table;

SELECT COUNT(salary)
FROM `student-database`.techer_table;

SELECT AVG(salary)
FROM `student-database`.techer_table;

SELECT SUM(salary) as sumoftecherssalary
FROM `student-database`.techer_table;




