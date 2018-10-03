SELECT * FROM `student-database`.student_table;
SELECT name, roll_no FROM `student-database`.student_table;
SELECT DISTINCT roll_no FROM `student-database`.student_table;
SELECT  roll_no, name FROM `student-database`.student_table WHERE roll_no<99998;
SELECT  roll_no, name FROM `student-database`.student_table WHERE roll_no<99998 AND age<28;
SELECT  roll_no, name FROM `student-database`.student_table WHERE roll_no<99998 OR age<28;
SELECT  roll_no, name FROM `student-database`.student_table WHERE  NOT age<25;
SELECT  age, name FROM `student-database`.student_table WHERE  NOT age<25 ORDER BY age;
SELECT  roll_no, name FROM `student-database`.student_table  ORDER BY roll_no DESC;




