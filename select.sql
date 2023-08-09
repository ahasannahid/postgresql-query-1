-- Active: 1691480676960@@127.0.0.1@5432@test2
CREATE TABLE IF NOT EXISTS departments(
        deptID SERIAL PRIMARY KEY,
        name TEXT NOT NULL
    );

INSERT INTO departments (name)
VALUES
    ('Computer Science'),
    ('Electrical Engineering'),
    ('Mechanical Engineering'),
    ('Business Administration'),
    ('Biology');

CREATE TABLE IF NOT EXISTS employees(
        empID SERIAL PRIMARY KEY,
        name TEXT NOT NULL,
        email text not null,
        salary INTEGER not NULL,
        joining_date date not null,
        deptID INTEGER not null,
        CONSTRAINT fk_deptID
            FOREIGN KEY(deptID)
            REFERENCES departments(deptID)
    );

INSERT INTO employees (name, email, salary, joining_date, deptID)
VALUES
    ('John Doe', 'john.doe@example.com', 60000, '2022-03-15', 1),
    ('Jane Smith', 'jane.smith@example.com', 55000, '2022-04-02', 2),
    ('Michael Johnson', 'michael.johnson@example.com', 70000, '2021-11-20', 1),
    ('Emily Brown', 'emily.brown@example.com', 52000, '2023-01-10', 3),
    ('William Davis', 'william.davis@example.com', 58000, '2022-08-05', 2),
    ('Olivia Wilson', 'olivia.wilson@example.com', 65000, '2021-09-30', 1),
    ('James Lee', 'james.lee@example.com', 62000, '2023-03-18', 2),
    ('Sophia Martinez', 'sophia.martinez@example.com', 59000, '2022-06-25', 3),
    ('Benjamin Anderson', 'benjamin.anderson@example.com', 75000, '2022-02-12', 4),
    ('Ava Taylor', 'ava.taylor@example.com', 54000, '2021-07-08', 5),
    ('Ethan Thomas', 'ethan.thomas@example.com', 71000, '2023-04-30', 4),
    ('Isabella Clark', 'isabella.clark@example.com', 63000, '2022-10-22', 1),
    ('Mason White', 'mason.white@example.com', 67000, '2021-12-05', 2),
    ('Emma Harris', 'emma.harris@example.com', 56000, '2022-05-15', 3),
    ('Alexander Hall', 'alexander.hall@example.com', 68000, '2023-02-08', 4),
    ('Mia Turner', 'mia.turner@example.com', 61000, '2022-09-18', 5),
    ('Sebastian Scott', 'sebastian.scott@example.com', 73000, '2021-10-10', 4),
    ('Scarlett Green', 'scarlett.green@example.com', 50000, '2023-05-20', 2),
    ('Liam Martinez', 'liam.martinez@example.com', 64000, '2022-01-25', 3),
    ('Aria King', 'aria.king@example.com', 69000, '2021-08-12', 1);

                                    -- select operation--

-- select all field
select * FROM departments; --usually * use kora hoyna
select * FROM employees;
-- select some COLUMN
SELECT empID, name, email, joining_date,salary from employees;
-- duplicat value bad dite caile
SELECT DISTINCT name FROM employees;

-- filtering
SELECT * FROM employees
WHERE salary > 70000;

-- multiple condition(using OR , AND)
SELECT * FROM employees
WHERE salary > 60000 AND salary < 70000;

-- date wise filtering
SELECT * FROM employees
WHERE joining_date < '2022-01-01';

-- not EQUALS
SELECT * FROM employees
WHERE name <> 'James Garcia';

SELECT * FROM employees
WHERE name <> 'James Garcia' AND salary > 70000 OR name = 'Daniel Wilson';

-- pagination or sorting filtering/ limit sorting
SELECT * FROM employees
ORDER BY name 
DESC; 
SELECT * FROM employees
ORDER BY name 
ASC; --ASC
-- pagination
SELECT * FROM employees
ORDER BY name 
ASC LIMIT 10; --ASC

-- pagination second page
SELECT * FROM employees
ORDER BY name 
ASC LIMIT 10 OFFSET 1; --initially limit 10 offset 0 thakbe. user page 2 te click korle offset 1 hobe.

-- finding maximum value of a column
SELECT MAX(salary) FROM employees;

SELECT * 
FROM employees 
WHERE salary = (SELECT MAX(salary) FROM employees);

SELECT * 
FROM employees ORDER BY salary DESC LIMIT 1;

-- height third
SELECT * 
FROM employees ORDER BY salary DESC LIMIT 1 OFFSET 2;

-- min value
SELECT * 
FROM employees 
WHERE salary = (SELECT MIN(salary) FROM employees);







