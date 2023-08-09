-- Active: 1691480676960@@127.0.0.1@5432@test2

-- foreign key
-- department TABLE
-- each  department has many employee

CREATE TABLE
    Department(
        deptID SERIAL PRIMARY KEY,
        dept_name VARCHAR(50) NOT NULL
    );

INSERT INTO Department VALUES (1, 'IT');

-- delete row
DELETE FROM Department where deptID = 1;

-- employee TABLE
-- each  employee belongs a department
CREATE TABLE
    Employee(
        empID SERIAL PRIMARY KEY,
        emp_name VARCHAR(50) NOT NULL,
        departmentID INT,
        CONSTRAINT fk_constraint_dept FOREIGN KEY (departmentID) REFERENCES Department(deptID)
    );

INSERT INTO Employee VALUES (  1, 'Ahasan', 1);
-- delete row
DELETE FROM Employee where empID = 1;



CREATE TABLE courses(
    course_id SERIAL PRIMARY KEY,
    course_name VARCHAR(255) NOT NULL,
    description VARCHAR(255),
    published_date DATE
);
-- date formate ==> yyyy-mm-dd
INSERT INTO courses (course_name, description, published_date)
VALUES
    ('Introduction to Programming', 'Learn the basics of programming.', '2023-01-15'),
    ('Database Management', 'Explore the world of databases.', NULL),
    ('Web Development', NULL, NULL),
    ('Machine Learning Fundamentals', 'Get started with machine learning concepts.', '2023-04-05'),
    ('Graphic Design Basics', 'Learn the principles of graphic design.', '2023-05-12');

-- update database table row
-- UPDATE courses
-- SET course_name = 'postgres for beginner'
-- where course_id = 1;

--update multiple column
UPDATE courses
SET
course_name = 'postgres for beginner',
description = ' text'
where course_id = 1;

-- update multiple column with multiple row
UPDATE courses
SET
course_name = 'postgres for beginner',
description = ' text'
where course_id = 2 OR course_id = 2;

-- delete row
-- column er value delete korte caile update kore oi column er value null kore dite hoy.
DELETE from courses WHERE course_id = 1;

select * from courses;