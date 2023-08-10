-- left JOIN alternative name left outer join. left table er sokol record rakha hoy and right table er jei column match kore sudu oituku rekhe dey. right table er unmatch data ke null dibe. right join or right outer join reverse of lef join.


SELECT *
FROM employee
LEFT JOIN department ON department.department_id = employee.department_id;


SELECT *
FROM employee
RIGHT JOIN department ON department.department_id = employee.department_id;


-- full join(both taqble ke priority dey)

SELECT *
FROM employee
FULL JOIN department ON department.department_id = employee.department_id;
