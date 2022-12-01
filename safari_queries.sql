-- The names of the animals in a given enclosure
SELECT * FROM animals WHERE enclosureId = 7;

-- The names of the staff working in a given enclosure
SELECT * FROM employees
INNER JOIN assignments 
ON employees.id = assignments.employeeId
WHERE assignments.enclosureId = 3;

-- The names of the staff working in enclosures which are closed for maintenance
SELECT DISTINCT employees.name FROM employees
INNER JOIN assignments 
ON employees.id = assignments.employeeId
INNER JOIN enclosures
ON enclosures.id = assignments.enclosureid
WHERE enclosures.closedformaintenance = TRUE;

--The name of the enclosure where the oldest animal lives. If there are two animals who are the same age choose the first one alphabetically.
SELECT enclosures.name FROM enclosures 
INNER JOIN animals
ON enclosures.id = animals.enclosureid
ORDER BY animals.age DESC, animals.name LIMIT 1;

--The number of different animal types a given keeper has been assigned to work with.
SELECT COUNT( DISTINCT animals.type) FROM animals
INNER JOIN enclosures
ON animals.enclosureId = enclosures.id
INNER JOIN assignments
ON enclosures.id = assignments.enclosureId
INNER JOIN employees
ON employees.id = assignments.employeeId
WHERE employees.id = 15;

--The number of different keepers who have been assigned to work in a given enclosure
SELECT COUNT(DISTINCT employees.name) FROM employees
INNER JOIN assignments
ON employees.id = assignments.employeeId
INNER JOIN enclosures
ON enclosures.id = assignments.enclosureId
WHERE enclosureId = 1;

--The names of the other animals sharing an enclosure with a given animal (eg. find the names of all the animals sharing the big cat field with Tony)
--(finding Tony's enclosure ID)
SELECT enclosures.id FROM enclosures
INNER JOIN animals
ON animals.enclosureid = enclosures.id
WHERE animals.name = 'Tony';

SELECT DISTINCT(animals.name) FROM animals
INNER JOIN enclosures
ON animals.enclosureId = enclosures.id
INNER JOIN assignments
ON enclosures.id = assignments.enclosureId
WHERE enclosures.id = 1
AND animals.name != 'Tony'; 