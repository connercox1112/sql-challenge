-- Create departments table
CREATE TABLE departments (
    dept_no INT PRIMARY KEY,
    dept_name VARCHAR(255)
);

-- Create dept_emp table
CREATE TABLE dept_emp (
    emp_no INT,
    dept_no INT,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    PRIMARY KEY (emp_no, dept_no)
);

-- Create employees table
CREATE TABLE employees (
    emp_no INT PRIMARY KEY,
    emp_title_id VARCHAR(255),
    birth_date DATE,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    sex VARCHAR(1),
    hire_date DATE
);

-- Create titles table
CREATE TABLE titles (
    title_id INT PRIMARY KEY,
    title VARCHAR(255)
);

-- Create salaries table
CREATE TABLE salaries (
    emp_no INT,
    salary INT,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    PRIMARY KEY (emp_no)
);

-- Create dept_manager table
CREATE TABLE dept_manager (
    dept_no INT,
    emp_no INT,
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    PRIMARY KEY (dept_no, emp_no)
);
