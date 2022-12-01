DROP TABLE assignments;
DROP TABLE animals;
DROP TABLE employees;
DROP TABLE enclosures;

CREATE TABLE enclosures (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    capacity INT,
    closedForMaintenance BOOLEAN default FALSE
);

CREATE TABLE employees (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    employeeNumber INT
);

CREATE TABLE animals (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    type VARCHAR(255),
    age INT,
    enclosureId INT REFERENCES enclosures(id)
);

CREATE TABLE assignments (
    id SERIAL PRIMARY KEY,
    day VARCHAR(255),
    enclosureId INT REFERENCES enclosures(id),
    employeeId INT REFERENCES employees(id)
);

INSERT INTO employees (name, employeeNumber) VALUES ('Captain Rick', 12345);
INSERT INTO employees (name, employeeNumber) VALUES ('John Smith', 9832);
INSERT INTO employees (name, employeeNumber) VALUES ('Mary Smith', 9234);
INSERT INTO employees (name, employeeNumber) VALUES ('Alex Smith II', 9128);
INSERT INTO employees (name, employeeNumber) VALUES ('Bav Bav Snake King', 2738);
INSERT INTO employees (name, employeeNumber) VALUES ('Blue Millar', 3546);
INSERT INTO employees (name, employeeNumber) VALUES ('Steve Irwin', 5623);
INSERT INTO employees (name, employeeNumber) VALUES ('Charles Dickens', 2464);
INSERT INTO employees (name, employeeNumber) VALUES ('Noahs Ark', 6753);
INSERT INTO employees (name, employeeNumber) VALUES ('Steadtler W H Smith', 2411);
INSERT INTO employees (name, employeeNumber) VALUES ('Pilot V5', 1112);
INSERT INTO employees (name, employeeNumber) VALUES ('Sharpie Gel', 2414);
INSERT INTO employees (name, employeeNumber) VALUES ('Rene Descartes', 0001);
INSERT INTO employees (name, employeeNumber) VALUES ('Socrates', 0021);

INSERT INTO enclosures (name, capacity, closedForMaintenance) VALUES ('big cat field', 20, FALSE);
INSERT INTO enclosures (name, capacity, closedForMaintenance) VALUES ('elephant hang out spot', 100, TRUE);
INSERT INTO enclosures (name, capacity, closedForMaintenance) VALUES ('monkey jungle', 5000, FALSE);
INSERT INTO enclosures (name, capacity, closedForMaintenance) VALUES ('penguins ice rink', 4, FALSE);
INSERT INTO enclosures (name, capacity, closedForMaintenance) VALUES ('giraffe living room', 13, FALSE);
INSERT INTO enclosures (name, capacity, closedForMaintenance) VALUES ('snake pit', 89, FALSE);
INSERT INTO enclosures (name, capacity, closedForMaintenance) VALUES ('fly cage', 2, TRUE);

INSERT INTO animals (name, type, age, enclosureId) VALUES ('Tony', 'Tiger', 59, 1);
INSERT INTO animals (name, type, age, enclosureId) VALUES ('Cerulean Diamond', 'Cat', 110, 1);
INSERT INTO animals (name, type, age, enclosureId) VALUES ('Elmer', 'Elephant', 241, 2);
INSERT INTO animals (name, type, age, enclosureId) VALUES ('George', 'Monkey', 10, 3);
INSERT INTO animals (name, type, age, enclosureId) VALUES ('Piplup', 'Penguin', 2, 4);
INSERT INTO animals (name, type, age, enclosureId) VALUES ('Mumble', 'Penguin', 3, 4);
INSERT INTO animals (name, type, age, enclosureId) VALUES ('Melman', 'Giraffe', 32, 5);
INSERT INTO animals (name, type, age, enclosureId) VALUES ('Nagini', 'Snake', 7, 6);
INSERT INTO animals (name, type, age, enclosureId) VALUES ('Fred', 'Fly', 91, 7);
INSERT INTO animals (name, type, age, enclosureId) VALUES ('Filip', 'Fly', 83, 7);

INSERT INTO assignments (employeeId, enclosureId, day) VALUES (1, 1, 'Monday');
INSERT INTO assignments (employeeId, enclosureId, day) VALUES (1, 2, 'Tuesday');
INSERT INTO assignments (employeeId, enclosureId, day) VALUES (1, 3, 'Wednesday'); 
INSERT INTO assignments (employeeId, enclosureId, day) VALUES (1, 4, 'Thursday');
INSERT INTO assignments (employeeId, enclosureId, day) VALUES (1, 5, 'Friday');
INSERT INTO assignments (employeeId, enclosureId, day) VALUES (1, 6, 'Saturday');
INSERT INTO assignments (employeeId, enclosureId, day) VALUES (1, 7, 'Sunday');
INSERT INTO assignments (employeeId, enclosureId, day) VALUES (2, 1, 'Monday');
INSERT INTO assignments (employeeId, enclosureId, day) VALUES (2, 2, 'Tuesday');
INSERT INTO assignments (employeeId, enclosureId, day) VALUES (2, 3, 'Wednesday'); 
INSERT INTO assignments (employeeId, enclosureId, day) VALUES (2, 4, 'Thursday');
INSERT INTO assignments (employeeId, enclosureId, day) VALUES (2, 5, 'Friday');
INSERT INTO assignments (employeeId, enclosureId, day) VALUES (2, 6, 'Saturday');
INSERT INTO assignments (employeeId, enclosureId, day) VALUES (2, 7, 'Sunday');

INSERT INTO assignments (employeeId, enclosureId, day) VALUES (3, 2, 'Monday');
INSERT INTO assignments (employeeId, enclosureId, day) VALUES (3, 3, 'Tuesday');
INSERT INTO assignments (employeeId, enclosureId, day) VALUES (3, 4, 'Wednesday'); 
INSERT INTO assignments (employeeId, enclosureId, day) VALUES (3, 5, 'Thursday');
INSERT INTO assignments (employeeId, enclosureId, day) VALUES (3, 6, 'Friday');
INSERT INTO assignments (employeeId, enclosureId, day) VALUES (3, 7, 'Saturday');
INSERT INTO assignments (employeeId, enclosureId, day) VALUES (3, 1, 'Sunday');
INSERT INTO assignments (employeeId, enclosureId, day) VALUES (4, 2, 'Monday');
INSERT INTO assignments (employeeId, enclosureId, day) VALUES (4, 3, 'Tuesday');
INSERT INTO assignments (employeeId, enclosureId, day) VALUES (4, 4, 'Wednesday'); 
INSERT INTO assignments (employeeId, enclosureId, day) VALUES (4, 5, 'Thursday');
INSERT INTO assignments (employeeId, enclosureId, day) VALUES (4, 6, 'Friday');
INSERT INTO assignments (employeeId, enclosureId, day) VALUES (4, 7, 'Saturday');
INSERT INTO assignments (employeeId, enclosureId, day) VALUES (4, 1, 'Sunday');

INSERT INTO assignments (employeeId, enclosureId, day) VALUES (5, 3, 'Monday');
INSERT INTO assignments (employeeId, enclosureId, day) VALUES (5, 4, 'Tuesday');
INSERT INTO assignments (employeeId, enclosureId, day) VALUES (5, 5, 'Wednesday'); 
INSERT INTO assignments (employeeId, enclosureId, day) VALUES (5, 6, 'Thursday');
INSERT INTO assignments (employeeId, enclosureId, day) VALUES (5, 7, 'Friday');
INSERT INTO assignments (employeeId, enclosureId, day) VALUES (5, 1, 'Saturday');
INSERT INTO assignments (employeeId, enclosureId, day) VALUES (5, 2, 'Sunday');
INSERT INTO assignments (employeeId, enclosureId, day) VALUES (6, 3, 'Monday');
INSERT INTO assignments (employeeId, enclosureId, day) VALUES (6, 4, 'Tuesday');
INSERT INTO assignments (employeeId, enclosureId, day) VALUES (6, 5, 'Wednesday'); 
INSERT INTO assignments (employeeId, enclosureId, day) VALUES (6, 6, 'Thursday');
INSERT INTO assignments (employeeId, enclosureId, day) VALUES (6, 7, 'Friday');
INSERT INTO assignments (employeeId, enclosureId, day) VALUES (6, 1, 'Saturday');
INSERT INTO assignments (employeeId, enclosureId, day) VALUES (6, 2, 'Sunday');

INSERT INTO assignments (employeeId, enclosureId, day) VALUES (7, 4, 'Monday');
INSERT INTO assignments (employeeId, enclosureId, day) VALUES (7, 5, 'Tuesday');
INSERT INTO assignments (employeeId, enclosureId, day) VALUES (7, 6, 'Wednesday'); 
INSERT INTO assignments (employeeId, enclosureId, day) VALUES (7, 7, 'Thursday');
INSERT INTO assignments (employeeId, enclosureId, day) VALUES (7, 1, 'Friday');
INSERT INTO assignments (employeeId, enclosureId, day) VALUES (7, 2, 'Saturday');
INSERT INTO assignments (employeeId, enclosureId, day) VALUES (7, 3, 'Sunday');
INSERT INTO assignments (employeeId, enclosureId, day) VALUES (8, 4, 'Monday');
INSERT INTO assignments (employeeId, enclosureId, day) VALUES (8, 5, 'Tuesday');
INSERT INTO assignments (employeeId, enclosureId, day) VALUES (8, 6, 'Wednesday'); 
INSERT INTO assignments (employeeId, enclosureId, day) VALUES (8, 7, 'Thursday');
INSERT INTO assignments (employeeId, enclosureId, day) VALUES (8, 1, 'Friday');
INSERT INTO assignments (employeeId, enclosureId, day) VALUES (8, 2, 'Saturday');
INSERT INTO assignments (employeeId, enclosureId, day) VALUES (8, 3, 'Sunday');

INSERT INTO assignments (employeeId, enclosureId, day) VALUES (9, 5, 'Monday');
INSERT INTO assignments (employeeId, enclosureId, day) VALUES (9, 6, 'Tuesday');
INSERT INTO assignments (employeeId, enclosureId, day) VALUES (9, 7, 'Wednesday'); 
INSERT INTO assignments (employeeId, enclosureId, day) VALUES (9, 1, 'Thursday');
INSERT INTO assignments (employeeId, enclosureId, day) VALUES (9, 2, 'Friday');
INSERT INTO assignments (employeeId, enclosureId, day) VALUES (9, 3, 'Saturday');
INSERT INTO assignments (employeeId, enclosureId, day) VALUES (9, 4, 'Sunday');
INSERT INTO assignments (employeeId, enclosureId, day) VALUES (10, 5, 'Monday');
INSERT INTO assignments (employeeId, enclosureId, day) VALUES (10, 6, 'Tuesday');
INSERT INTO assignments (employeeId, enclosureId, day) VALUES (10, 7, 'Wednesday'); 
INSERT INTO assignments (employeeId, enclosureId, day) VALUES (10, 1, 'Thursday');
INSERT INTO assignments (employeeId, enclosureId, day) VALUES (10, 2, 'Friday');
INSERT INTO assignments (employeeId, enclosureId, day) VALUES (10, 3, 'Saturday');
INSERT INTO assignments (employeeId, enclosureId, day) VALUES (10, 4, 'Sunday');

INSERT INTO assignments (employeeId, enclosureId, day) VALUES (11, 6, 'Monday');
INSERT INTO assignments (employeeId, enclosureId, day) VALUES (11, 7, 'Tuesday');
INSERT INTO assignments (employeeId, enclosureId, day) VALUES (11, 1, 'Wednesday'); 
INSERT INTO assignments (employeeId, enclosureId, day) VALUES (11, 2, 'Thursday');
INSERT INTO assignments (employeeId, enclosureId, day) VALUES (11, 3, 'Friday');
INSERT INTO assignments (employeeId, enclosureId, day) VALUES (11, 4, 'Saturday');
INSERT INTO assignments (employeeId, enclosureId, day) VALUES (11, 5, 'Sunday');
INSERT INTO assignments (employeeId, enclosureId, day) VALUES (12, 6, 'Monday');
INSERT INTO assignments (employeeId, enclosureId, day) VALUES (12, 7, 'Tuesday');
INSERT INTO assignments (employeeId, enclosureId, day) VALUES (12, 1, 'Wednesday'); 
INSERT INTO assignments (employeeId, enclosureId, day) VALUES (12, 2, 'Thursday');
INSERT INTO assignments (employeeId, enclosureId, day) VALUES (12, 3, 'Friday');
INSERT INTO assignments (employeeId, enclosureId, day) VALUES (12, 4, 'Saturday');
INSERT INTO assignments (employeeId, enclosureId, day) VALUES (12, 5, 'Sunday');

INSERT INTO assignments (employeeId, enclosureId, day) VALUES (13, 7, 'Monday');
INSERT INTO assignments (employeeId, enclosureId, day) VALUES (13, 1, 'Tuesday');
INSERT INTO assignments (employeeId, enclosureId, day) VALUES (13, 2, 'Wednesday'); 
INSERT INTO assignments (employeeId, enclosureId, day) VALUES (13, 3, 'Thursday');
INSERT INTO assignments (employeeId, enclosureId, day) VALUES (13, 4, 'Friday');
INSERT INTO assignments (employeeId, enclosureId, day) VALUES (13, 5, 'Saturday');
INSERT INTO assignments (employeeId, enclosureId, day) VALUES (13, 6, 'Sunday');
INSERT INTO assignments (employeeId, enclosureId, day) VALUES (14, 7, 'Monday');
INSERT INTO assignments (employeeId, enclosureId, day) VALUES (14, 1, 'Tuesday');
INSERT INTO assignments (employeeId, enclosureId, day) VALUES (14, 2, 'Wednesday'); 
INSERT INTO assignments (employeeId, enclosureId, day) VALUES (14, 3, 'Thursday');
INSERT INTO assignments (employeeId, enclosureId, day) VALUES (14, 4, 'Friday');
INSERT INTO assignments (employeeId, enclosureId, day) VALUES (14, 5, 'Saturday');
INSERT INTO assignments (employeeId, enclosureId, day) VALUES (14, 6, 'Sunday');