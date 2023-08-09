-- Active: 1691480676960@@127.0.0.1@5432@test3

--mainly 4 type of join(multiple table theke data access er jonne used hoy)

-- inner join

CREATE TABLE
    department(
        department_id INT PRIMARY KEY,
        department_name VARCHAR(50)
    );

INSERT INTO department (department_id, department_name)
VALUES
    (1, 'Executive'),
    (2, 'HR'),
    (3, 'Sales'),
    (4, 'Development'),
    (5, 'Support'),
    (6, 'Research');

CREATE TABLE
    employee(
        employee_id INT PRIMARY KEY,
        employee_name VARCHAR(100),
        department_id INT,
        job_role VARCHAR(100),
        manager_id INT,
        FOREIGN KEY (department_id) REFERENCES department(department_id)
    );

    INSERT INTO employee (employee_id, employee_name, department_id, job_role, manager_id)
VALUES
    (1, 'John Smith', 2, 'Software Engineer', NULL),
    (2, 'Jane Doe', 3, 'CEO', 1),
    (3, 'Michael Johnson', 1, 'HR Manager', 2),
    (4, 'Emily Williams', 4, 'CEO', 3),
    (5, 'David Brown', 2, 'Senior Software Engineer', 1),
    (6, 'Sarah Miller', 3, 'Marketing Manager', 2),
    (7, 'Robert Lee', 5, 'Sales Representative', NULL),
    (8, 'Olivia Davis', 2, 'Support', 1),
    (9, 'William Wilson', 4, 'Backend Developer', 4),
    (10, 'Ava Martinez', 6, 'IT Specialist', 6),
    (11, 'Sophia Anderson', 1, 'HR Assistant', 3),
    (12, 'James Taylor', 5, 'Sales Manager', 6),
    (13, 'Emma Thomas', 2, 'Software Developer', 5),
    (14, 'Liam White', NULL, 'Financial Assistant', 9),
    (15, 'Mia Harris', 6, 'IT Manager', 10);


    SELECT * FROM department;
    SELECT * FROM employee;

-- joining(inner join between department and employee table)

SELECT employee.employee_name, employee.job_role, department.department_name
FROM employee
INNER JOIN department ON department.department_id = employee.department_id;
-- joining mainly dui table er sokol colum e return kore joining er condition er upor based kore.
SELECT *
FROM employee
INNER JOIN department ON department.department_id = employee.department_id;