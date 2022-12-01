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