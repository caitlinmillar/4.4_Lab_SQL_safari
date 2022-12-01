-- The names of the animals in a given enclosure
SELECT * FROM animals WHERE enclosureId = 7;

-- The names of the staff working in a given enclosure
SELECT * FROM employees
INNER JOIN assignments 
ON employees.id = assignments.employeeId
WHERE assignments.enclosureId = 3;
