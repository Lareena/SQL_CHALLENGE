-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/50gZ6q
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE titles (
    title_id VARCHAR(5) NOT NULL PRIMARY KEY,
    title VARCHAR(50)  NOT NULL
);

SELECT * FROM titles

CREATE TABLE employees (
    emp_no INTEGER   NOT NULL,
	emp_title_id VARCHAR(5) NOT NULL,
    birth_date DATE   NOT NULL,
    first_name VARCHAR(50)   NOT NULL,
    last_name VARCHAR(50)   NOT NULL,
    sex VARCHAR   NOT NULL,
    hire_date DATE   NOT NULL,
	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

SELECT * FROM employees

CREATE TABLE salaries (
    emp_no INTEGER   NOT NULL,
    salary INTEGER   NOT NULL,
	PRIMARY KEY (emp_no),
    FOREIGN KEY(emp_no) REFERENCES employees (emp_no)
);

SELECT * FROM salaries

CREATE TABLE departments (
    dept_no VARCHAR (4)   NOT NULL,
    dept_name VARCHAR (50)  NOT NULL,
	 PRIMARY KEY (dept_no)
);

SELECT * FROM departments

CREATE TABLE dept_emp (
    emp_no INTEGER   NOT NULL,
    dept_no VARCHAR(4)   NOT NULL,
    PRIMARY KEY (emp_no,dept_no),
    FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
);

SELECT * FROM dept_emp

CREATE TABLE dept_manager (
    dept_no VARCHAR(4)   NOT NULL,
    emp_no INTEGER   NOT NULL,
    PRIMARY KEY (emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);

SELECT * FROM dept_manager


