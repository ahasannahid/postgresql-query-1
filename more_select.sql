-- IN , NOT IN, BETWEEN, LIKE

-- IN
SELECT * FROM employees WHERE empid IN (2,3,4,500);

--NOT IN
SELECT * FROM employees WHERE empid NOT IN (2,3,4,5);

-- BETWEEN
SELECT * FROM employees WHERE salary BETWEEN 10000 AND 15000;

--string searching (LIKE)

SELECT * FROM employees WHERE name LIKE '%J%'; --which name contains J

SELECT * FROM employees WHERE name LIKE 'J%'; --starting with J. Like and where operator er vitor er string case SENSITIVE

-- specific position
SELECT * FROM employees WHERE name LIKE 'J%';

SELECT * FROM employees WHERE name LIKE '_a%'; --second position e  a ache. age just 1 character and last e jekono kisu.
SELECT * FROM employees WHERE name LIKE '__m%';
SELECT * FROM employees WHERE name LIKE '%i_';
SELECT * FROM employees WHERE name LIKE '__i__';


SELECT * FROM employees WHERE name LIKE 'O%s';  --first 'O' and last e 's'

UPDATE employees
set deptid = NULL
WHERE empid = 1;

--null value find in Column
SELECT * FROM employees WHERE deptid IS NULL;



