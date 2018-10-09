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

SELECT * FROM `student-database`.student_table
WHERE name LIKE 'b%';

SELECT * FROM `student-database`.student_table
WHERE name LIKE '%a';

SELECT * FROM `student-database`.student_table
WHERE name LIKE '%or%';

SELECT * FROM `student-database`.student_table
WHERE name LIKE '_u%';

SELECT * FROM `student-database`.student_table
WHERE name LIKE 'a_%_%';

SELECT * FROM `student-database`.student_table
WHERE name LIKE 'a%x';

SELECT * FROM `student-database`.student_table
WHERE name NOT LIKE 'a%';

SELECT * FROM `student-database`.student_table
WHERE name LIKE 'din%';

SELECT * FROM `student-database`.student_table
WHERE name LIKE '%ba%';

SELECT * FROM `student-database`.student_table
WHERE name LIKE '_inkar';

SELECT * FROM `student-database`.student_table
WHERE name LIKE 's_j_ta';

SELECT * FROM `student-database`.student_table
WHERE name LIKE '[sda]%';

SELECT * FROM `student-database`.student_table
WHERE name LIKE '[a-b]%';

SELECT * FROM `student-database`.student_table
WHERE name LIKE '[!sda]%';

SELECT * FROM `student-database`.student_table
WHERE name NOT LIKE '[sda]%';

SELECT * FROM `student-database`.student_table
WHERE adress IN ('tokyo', 'sar', 'edogawa');

SELECT * FROM `student-database`.student_table
WHERE adress NOT IN ('tokyo', 'sar', 'edogawa');

SELECT * FROM `student-database`.student_table
WHERE age BETWEEN 22 AND 27;

SELECT * FROM `student-database`.student_table
WHERE age NOT BETWEEN 22 AND 27;

SELECT * FROM `student-database`.student_table
WHERE (age BETWEEN 22 AND 27)
AND NOT sr_no IN (1,2,3);

SELECT * FROM `student-database`.student_table
WHERE sr_no BETWEEN 3 AND 4;

SELECT * FROM `student-database`.student_table
WHERE admissondate BETWEEN '2018-06-01' AND '2018-08-02';

SELECT sr_no AS serial_number, name AS student_name
FROM `student-database`.student_table;

SELECT name AS student_name, roll_no AS roll_number FROM `student-database`.student_table;

SELECT name, adress + ', '+ adress+ ',' + age + ', ' + admissondate AS Details
FROM `student-database`.student_table;

SELECT tt.firstname, st.name
FROM `student-database`.techer_table AS tt, `student-database`.student_table AS st
WHERE tt.address = st.adress;



