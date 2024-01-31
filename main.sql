-- Create new table students
CREATE TABLE students (
    id INT PRIMARY KEY,
    first_name VARCHAR(50),
    middle_name VARCHAR(50),
    last_name VARCHAR(50),
    age INT,
    location VARCHAR(100)
);

-- Insert 6 records into the students table
INSERT INTO students (id, first_name, middle_name, last_name, age, location)
VALUES
    (1, 'Juan', NULL, 'Cruz', 18, 'Manila'),
    (2, 'Anne', NULL, 'Wall', 20, 'Manila'),
    (3, 'Theresa', NULL, 'Joseph', 21, 'Manila'),
    (4, 'Issac', NULL, 'Gray', 19, 'Laguna'),
    (5, 'Zack', NULL, 'Matthews', 22, 'Marikina'),
    (6, 'Finn', NULL, 'Lam', 25, 'Manila');

-- Update first record
UPDATE students
SET first_name = 'Ivan', middle_name = 'Ingram', age = 25, last_name = 'Howard'
WHERE id = 1;

-- Delete last record
DELETE FROM students
WHERE id = 6;

-- Display the counts of all students
SELECT COUNT(id) FROM students;

-- Select all students with location is Manila
SELECT * FROM students WHERE location = 'Manila';

-- Display the average age of all students
SELECT AVG(age) FROM students;

-- Display all students by age descending order
SELECT * FROM students ORDER BY age DESC;

-- Create research_papers table
CREATE TABLE research_papers (
    id SERIAL PRIMARY KEY,
    student_id INT REFERENCES students(id),
    grade VARCHAR(1) CHECK (grade IN ('A', 'B', 'C', 'D', 'E', 'F', NULL))
);

-- Insert 10 records into the research_papers table
INSERT INTO research_papers (student_id, grade)
VALUES
    (1, 'A'),
    (1, 'B'),
    (2, 'C'),
    (2, 'D'),
    (3, 'F'),
    (4, 'A'),
    (4, 'B'),
    (5, NULL),
    (5, NULL),
    (3, 'B'); -- Extra record for a student with id 3

-- Query all students with multiple research papers
SELECT
    s.first_name,
    s.last_name,
    COUNT(rp.id) AS number_of_research_papers
FROM
    students s
JOIN
    research_papers rp ON s.id = rp.student_id
GROUP BY
    s.id, s.first_name, s.last_name
HAVING
    COUNT(rp.id) > 1;
    
-- Query all students with ungraded research papers
SELECT
    s.first_name,
    s.last_name,
    rp.id AS research_paper_id,
    rp.grade
FROM
    students s
JOIN
    research_papers rp ON s.id = rp.student_id
WHERE
    rp.grade IS NULL;
