-- Create the Departments table
CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100)
);

-- Create the Employees table
CREATE TABLE Employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100),
    emp_age INT,
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES Departments(department_id)
);

-- Create the Projects table
CREATE TABLE Projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(100),
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES Departments(department_id)
);

-- Populate the Departments table
INSERT INTO Departments (department_id, department_name)
VALUES (1, 'HR'), (2, 'Engineering'), (3, 'Marketing');

-- Populate the Employees table
INSERT INTO Employees (emp_id, emp_name, emp_age, department_id)
VALUES (1, 'John Doe', 30, 2),
       (2, 'Jane Smith', 28, 2),
       (3, 'Mike Johnson', 35, 1),
       (4, 'Emily Brown', 25, 3);

-- Populate the Projects table
INSERT INTO Projects (project_id, project_name, department_id)
VALUES (101, 'Project X', 2),
       (102, 'Project Y', 1),
       (103, 'Project Z', 3);
