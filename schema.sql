-- Employee Management System (EMS)

-- Creating tables :-
-- departments
-- roles
-- employees
-- tasks
-- projects
-- employee_tasks

-- Create the 'departments' table
CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(255) NOT NULL
);

-- Create the 'roles' table
CREATE TABLE roles (
    role_id INT PRIMARY KEY,
    role_title VARCHAR(255) NOT NULL,
    salary DECIMAL(10, 2) NOT NULL
);

-- Create the 'employees' table
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    hire_date DATE NOT NULL,
    department_id INT,
    role_id INT,
    FOREIGN KEY (department_id) REFERENCES departments (department_id),
    FOREIGN KEY (role_id) REFERENCES roles (role_id)
);

-- Create the 'tasks' table
CREATE TABLE tasks (
    task_id INT PRIMARY KEY,
    task_description VARCHAR(255) NOT NULL,
    due_date DATE NOT NULL,
    status VARCHAR(50) NOT NULL
);

-- Create the 'projects' table
CREATE TABLE projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(255) NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL
);

-- Create the 'employee_tasks' table
CREATE TABLE employee_tasks (
    employee_id INT,
    task_id INT,
    FOREIGN KEY (employee_id) REFERENCES employees (employee_id),
    FOREIGN KEY (task_id) REFERENCES tasks (task_id),
    PRIMARY KEY (employee_id, task_id)
);