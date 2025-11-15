SELECT id, first_name, last_name FROM employee WHERE team_id IS NULL;

SELECT employee.id, employee.first_name, employee.last_name FROM employee LEFT JOIN leave ON leave.employee_id = employee.id WHERE leave.id IS NULL;