CREATE DATABASE Program;
USE Program;

CREATE TABLE Persons (
  person_id INT PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  email VARCHAR(100),
  related_name_id INT
);

CREATE TABLE Phones (
  phone_id INT PRIMARY KEY,
  person_id INT,
  phone_number VARCHAR(20),
  FOREIGN KEY (person_id) REFERENCES Persons(person_id)
);
-- Inserting data into Persons table
INSERT INTO Persons (person_id, first_name, last_name, email, related_name_id) VALUES
(1, 'John', 'Doe', 'john.doe@example.com', 2),
(2, 'Jane', 'Smith', 'jane.smith@example.com', NULL);

-- Inserting data into Phones table
INSERT INTO Phones (phone_id, person_id, phone_number) VALUES
(1, 1, '555-1234'),
(2, 2, '555-5678'),
(3, 2, '555-9012');
