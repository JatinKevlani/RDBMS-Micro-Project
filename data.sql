-- Inserting data

-- Insert sample data into 'departments' table
INSERT INTO departments (department_id, department_name) VALUES (1, 'HR');
INSERT INTO departments (department_id, department_name) VALUES (2, 'IT');
INSERT INTO departments (department_id, department_name) VALUES (3, 'Finance');

-- Insert sample data into 'roles' table
INSERT INTO roles (role_id, role_title, salary) VALUES (1, 'Manager', 80000);
INSERT INTO roles (role_id, role_title, salary) VALUES (2, 'Developer', 60000);
INSERT INTO roles (role_id, role_title, salary) VALUES (3, 'Accountant', 65000);

-- Insert sample data into 'employees' table
INSERT INTO employees (employee_id, first_name, last_name, email, hire_date, department_id, role_id) VALUES (1, 'John', 'Doe', 'john.doe@example.com', TO_DATE('2023-01-01', 'YYYY-MM-DD'), 1, 1);
INSERT INTO employees (employee_id, first_name, last_name, email, hire_date, department_id, role_id) VALUES (2, 'Jane', 'Smith', 'jane.smith@example.com', TO_DATE('2023-02-15', 'YYYY-MM-DD'), 2, 2);
INSERT INTO employees (employee_id, first_name, last_name, email, hire_date, department_id, role_id) VALUES (3, 'Bob', 'Johnson', 'bob.johnson@example.com', TO_DATE('2023-03-20', 'YYYY-MM-DD'), 1, 3);

-- Insert sample data into 'tasks' table
INSERT INTO tasks (task_id, task_description, due_date, status) VALUES (1, 'Complete coding assignment', TO_DATE('2023-04-30', 'YYYY-MM-DD'), 'Pending');
INSERT INTO tasks (task_id, task_description, due_date, status) VALUES (2, 'Prepare monthly report', TO_DATE('2023-05-15', 'YYYY-MM-DD'), 'In Progress');
INSERT INTO tasks (task_id, task_description, due_date, status) VALUES (3, 'Review project documentation', TO_DATE('2023-05-10', 'YYYY-MM-DD'), 'Completed');

-- Insert sample data into 'projects' table
INSERT INTO projects (project_id, project_name, start_date, end_date) VALUES (1, 'Website Redesign', TO_DATE('2023-04-01', 'YYYY-MM-DD'), TO_DATE('2023-06-30', 'YYYY-MM-DD'));
INSERT INTO projects (project_id, project_name, start_date, end_date) VALUES (2, 'Budget Analysis', TO_DATE('2023-05-01', 'YYYY-MM-DD'), TO_DATE('2023-07-31', 'YYYY-MM-DD'));

-- Insert sample data into 'employee_tasks' table
INSERT INTO employee_tasks (employee_id, task_id) VALUES (1, 1);
INSERT INTO employee_tasks (employee_id, task_id) VALUES (2, 2);
INSERT INTO employee_tasks (employee_id, task_id) VALUES (3, 3);