USE sales;

-- Question 1: create the table
CREATE TABLE student (
    id INT PRIMARY KEY,
    fullName VARCHAR(100),
    age INT
);

-- Question 2: insert records
START TRANSACTION;

INSERT INTO student (id, fullName, age)
VALUES
    (1, 'Amina Hassan', 19),
    (2, 'John Mwangi', 21),
    (3, 'Fatuma Abdi', 22);

COMMIT;

-- Question 3: update student 2's age to 20
START TRANSACTION;

UPDATE student
SET age = 20
WHERE id = 2;

COMMIT;

-- Check the result
SELECT * FROM student;