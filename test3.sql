-- Active: 1691480676960@@127.0.0.1@5432@test3
CREATE TABLE IF NOT EXISTS employees(
        emp_ID SERIAL PRIMARY KEY,
        emp_name VARCHAR(100), 
        emp_department VARCHAR(100),
        emp_salary DECIMAL(10,2),
        emp_hire_date date
    );

    INSERT INTO employees (emp_name, emp_department, emp_salary, emp_hire_date)
    VALUES
    ('John Doe', 'IT', 60000, '2022-01-15'),
    ('Jane Smith', 'HR', 55000, '2022-03-10'),
    ('Michael Johnson', 'Finance', 70000, '2021-11-20'),
    ('Emily Brown', 'Marketing', 62000, '2022-05-05'),
    ('David Williams', 'IT', 58000, '2022-02-18');

    select * FROM employees;

    SELECT DISTINCT emp_department FROM employees;