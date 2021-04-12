DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS titles;


CREATE TABLE departments (
  dept_no character varying(10) NOT NULL,
  dept_name character varying(45),
  PRIMARY KEY (dept_no)
);

CREATE TABLE dept_emp (
  emp_id SERIAL,
  emp_no integer NOT NULL,
  dept_no character varying(10),
  PRIMARY KEY (emp_id),
  FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE dept_manager (
  manager_id character varying(10),
  dept_no character varying(10),
  emp_no integer NOT NULL,
  PRIMARY KEY (manager_id),
  FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE employees (
  emp_no integer NOT NULL,
  emp_title character varying(10) NOT NULL,
  birth_date DATE,
  first_name character varying(45) NOT NULL,
  last_name character varying(45) NOT NULL,
  sex character varying(5),
  hire_date DATE,
  PRIMARY KEY (emp_no),
  FOREIGN KEY (emp_title) REFERENCES titles(title_id)
);

CREATE TABLE salaries (
  emp_no integer NOT NULL,
  salary integer NOT NULL,
  PRIMARY KEY (emp_no)
);

CREATE TABLE titles (
  title_id character varying(10) NOT NULL,
  title character varying(45) NOT NULL,
  PRIMARY KEY (title_id)
);

SELECT * 
FROM departments;

SELECT * 
FROM dept_emp;

SELECT * 
FROM dept_manager;

SELECT *
FROM employees;

SELECT * 
FROM salaries;

SELECT * 
FROM titles;
