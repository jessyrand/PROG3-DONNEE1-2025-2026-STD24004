SELECT id, first_name, last_name FROM employee WHERE team_id IS NULL;

SELECT employee.id, employee.first_name, employee.last_name 
FROM employee LEFT JOIN leave ON leave.employee_id = employee.id 
WHERE leave.id IS NULL;

SELECT
    leave.id leave_id,
    leave.start_date,
    leave.end_date,
    employee.first_name,
    employee.last_name,
    team.name team_name
FROM leave
JOIN employee ON employee.id = leave.employee_id
JOIN team ON team.id = employee.team_id;

SELECT employee.contract_type contract_type,COUNT(employee.id) employee_count
FROM employee
GROUP BY employee.contract_type;
