CREATE TABLE employees2(
    employee_id INT,
    name VARCHAR(100),
    department VARCHAR(100),
    salary INT,
    age INT,
    city VARCHAR(50),
    experience INT
);

INSERT INTO employees2 VALUES

    (1, 'Roshan', 'IT', 750000, 28, 'Banglore', 5),
    (2, 'Rama', 'HR', 550000, 32, 'Chennai', 7),
    (3, 'Shaima', 'Finance', 655000, 30, 'Mumbai', 6),
    (4, 'Ankitha', 'IT', 850000, 26, 'Hyderabad', 4),
    (5, 'Dyan', 'Marketing', 550000, 35, 'Banglore', 10),
    (6, 'Geetha', 'Finance', 725000, 29, 'Kochi', 5),
    (7, 'Jay', 'IT', 605000, 31, 'Chennai', 8),
    (8, 'Nakshatra', 'HR', 588000, 27, 'Mumbai', 3),
    (9, 'Pallavi', 'Marketing', 459000, 25, 'Kochi', 2),
    (10, 'Vineeth', 'Finance', 905000, 38, 'Banglore', 12)
;


-- Display all employee records.
SELECT * FROM employees2
;

-- Display unique department names.
SELECT DISTINCT department FROM employees2


-- Retrieve employees earning more than ₹500,000.
SELECT name FROM employees2
WHERE salary > 500000
;

-- Display employees belonging to a specific department (IT).
SELECT name FROM employees2
WHERE department = 'IT'
;

-- Retrieve employees whose salary falls between two given values (750000-1000000).
SELECT name FROM employees2
WHERE salary BETWEEN 750000 AND 1000000
;

-- Display employees working in selected departments using the IN operator.
SELECT name FROM employees2
WHERE department IN ('IT','Finance')
;

-- Sort employees by salary in descending order.
SELECT name, salary FROM employees2
ORDER BY salary DESC
;

-- Retrieve records using multiple conditions with AND, OR, and NOT operators.
SELECT name, department, salary FROM employees2
WHERE department = 'IT' AND salary > 650500
;

SELECT name, city FROM employees2
WHERE city = 'Banglore' OR city = 'Kochi'
;

SELECT name, department FROM employees2
WHERE  department != 'HR'