-- Active: 1691480676960@@127.0.0.1@5432@test2
-- aggregate function
SELECT * from departments;

-- avg salary
-- column name change korake alaiceing bole
SELECT AVG(salary) as something FROM employees;
SELECT MAX(salary) as something FROM employees;
SELECT MIN(salary) as something FROM employees;
SELECT MIN(salary) as something FROM employees;

-- group BY

SELECT deptid, MAX(salary)  FROM employees GROUP BY deptid;
SELECT deptid, MIN(salary) FROM employees GROUP BY deptid;
SELECT MIN(salary) FROM employees GROUP BY deptid;
SELECT AVG(salary) FROM employees GROUP BY deptid;

SELECT d.name, AVG(e.salary),MAX(e.salary), MIN(e.salary), SUM(e.salary) from employees e
FULL JOIN departments d on e.deptid = d.deptid
GROUP BY d.name;

SELECT d.name, AVG(e.salary),MAX(e.salary), MIN(e.salary), SUM(e.salary), count(*) from departments d
FULL JOIN employees e on e.deptid = d.deptid
GROUP BY d.deptid;

-- condition in group by.(where use kora jay na. having use korte hoy.)
SELECT d.name, AVG(e.salary),MAX(e.salary), MIN(e.salary), SUM(e.salary) from employees e
FULL JOIN departments d on e.deptid = d.deptid
GROUP BY d.name HAVING d.name = 'Biology';

SELECT d.name, AVG(e.salary),MAX(e.salary), MIN(e.salary), SUM(e.salary), count(*) from departments d
FULL JOIN employees e on e.deptid = d.deptid
GROUP BY d.deptid HAVING AVG(e.salary) > 50000;

