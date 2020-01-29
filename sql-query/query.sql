SELECT * FROM public.COMPANY WHERE AGE >= 22 AND SALARY >= 20000;

-- all the records where NAME starts with 'Pa', does not matter what comes after 'Pa'.
SELECT * FROM public.COMPANY WHERE NAME LIKE 'Pa%';

-- The following SELECT statement lists down all the records where AGE value is either 25 or 27 −
SELECT * FROM public.COMPANY WHERE AGE IN ( 20, 25 );

-- all the records where AGE value is in BETWEEN 25 AND 27
SELECT * FROM public.COMPANY WHERE AGE BETWEEN 25 AND 27;

-- The following SELECT statement makes use of SQL subquery where subquery 
-- finds all the records with AGE field having SALARY > 65000 and later WHERE clause is being used along 
-- with EXISTS operator to list down all the records where AGE from the outside query exists in the result returned by sub-query −

SELECT Name, AGE FROM public.COMPANY
        WHERE EXISTS (SELECT AGE FROM public.COMPANY WHERE SALARY > 40000);

-- And operator
SELECT * FROM COMPANY WHERE AGE >= 25 AND SALARY >= 55000;

SELECT * FROM COMPANY WHERE AGE >= 27 OR SALARY >= 55000;

-- basic syntax of UPDATE query with WHERE clause −
-- UPDATE table_name
-- SET column1 = value1, column2 = value2....
-- WHERE [condition];

-- update salary for a customer, whose ID is 6 −
UPDATE COMPANY SET SALARY = 35000 WHERE ID = 3;

UPDATE COMPANY SET ID = 3 WHERE salary = 45000;

-- basic syntax of DELETE query with WHERE clause
-- DELETE FROM table_name
-- WHERE [condition];
DELETE FROM COMPANY WHERE ID = 4;

-- The PostgreSQL LIKE operator is used to match text values against a pattern using wildcards. 
-- If the search expression can be matched to the pattern expression, the LIKE operator will return true

-- records from COMPANY table where AGE starts with 2 −
SELECT * FROM COMPANY WHERE AGE::text LIKE '2%'

-- all the records from COMPANY table where ADDRESS will have a hyphen (li) inside the text −
SELECT * FROM COMPANY WHERE ADDRESS  LIKE '%li%';

-- The PostgreSQL LIMIT clause is used to limit the data amount returned by the SELECT statement.
-- yntax of SELECT statement with LIMIT clause is as follows −

-- SELECT column1, column2, columnN
-- FROM table_name
-- LIMIT [no of rows]

-- limits the row in the table according to the number of rows you want to fetch from table −
SELECT * FROM COMPANY LIMIT 4;

-- you may need to pick up a set of records from a particular offset. 
-- Here is an example, which picks up three records starting from the third position −
SELECT * FROM COMPANY LIMIT 3 OFFSET 2;

-- The PostgreSQL ORDER BY clause is used to sort the data in ascending or descending order, based on one or more columns.

-- syntax of ORDER BY clause is as follows −

-- SELECT column-list
-- FROM table_name
-- [WHERE condition]
-- [ORDER BY column1, column2, .. columnN] [ASC | DESC];

SELECT * FROM COMPANY ORDER BY AGE ASC;
SELECT * FROM COMPANY ORDER BY NAME, SALARY ASC;

-- The PostgreSQL GROUP BY clause is used in collaboration with the SELECT statement to group together those rows in a table that have identical data.
SELECT NAME, SUM(SALARY) FROM COMPANY GROUP BY NAME;

INSERT INTO COMPANY VALUES ('Paul', 24, 'Houston', 20000.00, 8);
INSERT INTO COMPANY VALUES ('Jahan', 44, 'Norway', 5000.00, 9);
INSERT INTO COMPANY VALUES ('teddy', 45, 'Texas', 5000.00, 10);

-- add salary where name is same
SELECT NAME, SUM(SALARY) FROM COMPANY GROUP BY NAME ORDER BY NAME;

-- WITH query provides a way to write auxiliary statements for use in a larger query. 
-- It helps in breaking down complicated and large queries into simpler forms, which are easily readable. 
With CTE AS
(Select
 ID
, NAME
, AGE
, ADDRESS
, SALARY
FROM COMPANY )
Select * From CTE;

-- using the RECURSIVE keyword along with the WITH clause, to find the sum of the salaries less than 40000, as follows −
WITH RECURSIVE t(n) AS (
   VALUES (0)
   UNION ALL
   SELECT SALARY FROM COMPANY WHERE SALARY < 40000
)
SELECT sum(n) FROM t;

-- create a table COMPANY1 similar to the table COMPANY.
-- The DELETE in WITH deletes the specified rows from COMPANY
CREATE TABLE COMPANY1(
   ID INT PRIMARY KEY     NOT NULL,
   NAME           TEXT    NOT NULL,
   AGE            INT     NOT NULL,
   ADDRESS        CHAR(50),
   SALARY         REAL
);

-- The query moves rows from COMPANY to COMPANY1. 
WITH moved_rows AS (
   DELETE FROM COMPANY
   WHERE
      SALARY >= 30000
   RETURNING *
)
INSERT INTO COMPANY1 (SELECT * FROM moved_rows);

-- i do this beause i want my whole data in company table
WITH moved_rows AS (
   DELETE FROM COMPANY1
   WHERE
      SALARY >= 30000
   RETURNING *
)
INSERT INTO COMPANY (SELECT  FROM moved_rows);

-- HAVING clause allows us to pick out particular rows where the function's result meets some condition.
-- this gives the name which contains less than two times
SELECT NAME FROM COMPANY GROUP BY name HAVING count(name) < 2;
-- this gives the name which contains greater than 1 times mens dublicate name
SELECT NAME FROM COMPANY GROUP BY name HAVING count(name) > 1;

-- DISTINCT keyword is used in conjunction with SELECT statement to eliminate all the duplicate records and fetching only unique records.
SELECT DISTINCT name FROM COMPANY;

		