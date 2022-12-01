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



INSERT INTO enclosures (name, capacity, closedForMaintenance) VALUES ('big cat field', 20, FALSE);
INSERT INTO enclosures (name, capacity, closedForMaintenance) VALUES ('elephant hang out spot', 100, TRUE);
INSERT INTO enclosures (name, capacity, closedForMaintenance) VALUES ('monkey jungle', 5000, FALSE);
INSERT INTO enclosures (name, capacity, closedForMaintenance) VALUES ('penguins ice rink', 4, FALSE);
INSERT INTO enclosures (name, capacity, closedForMaintenance) VALUES ('giraffe living room', 13, FALSE);
INSERT INTO enclosures (name, capacity, closedForMaintenance) VALUES ('snake pit', 89, FALSE);