-- Create a table for each csv file then import each csv file to each table

-- Departments Table
CREATE TABLE departments(
	dept_no VARCHAR(10) NOT NULL,
	PRIMARY KEY (dept_no),
	dept_name VARCHAR(30) NOT NULL,
	UNIQUE (dept_name)
);

-- Employees Table
CREATE TABLE employees (
	emp_no INT NOT NULL,
	PRIMARY KEY (emp_no),
	emp_title_id VARCHAR(30) NOT NULL,
    birth_date DATE NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	sex VARCHAR NOT NULL,
	hire_date DATE NOT NULL
);

-- Department Employee Table
CREATE TABLE dept_emp (
    emp_no INT NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    dept_no VARCHAR(30) NOT NULL,
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

-- Department Manager Table
CREATE TABLE dept_manager (
    dept_no VARCHAR(30) NOT NULL,
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    emp_no INT NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

-- Salaries Table
CREATE TABLE salaries(
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    PRIMARY KEY(emp_no)
);

-- Titles Table
CREATE TABLE titles(
	title_id VARCHAR(30) NOT NULL,
    title VARCHAR(30) NOT NULL
);