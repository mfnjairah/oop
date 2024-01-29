-- Create new table

CREATE TABLE students (
    id INT PRIMARY KEY,
    first_name VARCHAR(50),
    middle_name VARCHAR(50),
    last_name VARCHAR(50),
    age INT,
    location VARCHAR(100)
);

-- Insert 6 records

INSERT INTO students (id, first_name, middle_name, last_name, age, location)
VALUES
    (1, 'Juan', 'Blank', 'Cruz', 18, 'Manila'),
    (2, 'Anne', 'Blank', 'Wall', 20, 'Manila'),
    (3, 'Theresa', 'Blank', 'Joseph', 21, 'Manila'),
    (4, 'Issac', 'Blank', 'Gray', 19, 'Laguna'),
    (5, 'Zack', 'Blank', 'Matthews', 22, 'Marikina'),
    (6, 'Finn', 'Blank', 'Lam', 25, 'Manila');

-- Update first record

UPDATE students
SET first_name = 'Ivan', middle_name = 'Ingram', age = 25, last_name = 'Howard'
WHERE id = 1;

-- Delete last record

DELETE FROM students
WHERE id = 6;

-- or

DELETE FROM students
ORDER BY id DESC
LIMIT 1;

-- Display the counts of all students

SELECT COUNT(id) FROM students


-- Select all students with location is Manila

SELECT * FROM students WHERE location = 'Manila'

-- Display the average age of all students

SELECT AVG(age) FROM students


-- Display all students by age descending order
SELECT age FROM students ORDER BY age DESC