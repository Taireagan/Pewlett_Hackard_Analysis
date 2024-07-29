# Pewlett Hackard Company Audit

## Company Synopsis

Pewlett Hackard has a long history of of employment and wants to know infoormation on the employees that were employeed during the 1980's and 1990's. All that remains of the employee database from that period are six CSV files. The company has asked to design tables using PostgreSQL to hold the data from the CSV files, import the CSV files into a SQL database, and then answer questions about the data.

---

### Resources:

**Software:** PostgreSQL, pgAdmin 4 v8.7, Visula Studio Code 1.91.1

**Resources Files:** [departments.csv](https://github.com/Taireagan/Pewlett_Hackard_Analysis/blob/main/data/departments.csv), [dept_emp.csv](https://github.com/Taireagan/Pewlett_Hackard_Analysis/blob/main/data/dept_emp.csv), [dept_manager.csv](https://github.com/Taireagan/Pewlett_Hackard_Analysis/blob/main/data/dept_manager.csv), [employees.csv](https://github.com/Taireagan/Pewlett_Hackard_Analysis/blob/main/data/employees.csv), [salaries.csv](https://github.com/Taireagan/Pewlett_Hackard_Analysis/blob/main/data/salaries.csv), [titles.csv](https://github.com/Taireagan/Pewlett_Hackard_Analysis/blob/main/data/titles.csv)

---
## Data Modeling
### Entity Relationship Diagram
After inspecting the CSV files a sketch of the relationship between table was created using the Quick Data Base tool [QuickDBD](https://www.quickdatabasediagrams.com/)
![EmployeeDataBase.png](https://github.com/Taireagan/Pewlett_Hackard_Analysis/blob/main/Resources/EmployeeDataBase.png?raw=true)

---
## Data Engineering
Used the provided information to create a table schema for each of the six CSV files.

![table_schemas.png](https://github.com/Taireagan/Pewlett_Hackard_Analysis/blob/main/Images/table_schemas.png?raw=true)

---

## Data Analysis Results

### Table 1:
List of employees by employee number, last name, first name, sex, and salary of each employee.

![employees_salary.png](https://github.com/Taireagan/Pewlett_Hackard_Analysis/blob/main/Images/employees_salary.png)

**Resource Files:**
[employees.csv](https://github.com/Taireagan/Pewlett_Hackard_Analysis/blob/main/data/employees.csv), [salaries.csv](https://github.com/Taireagan/Pewlett_Hackard_Analysis/blob/main/data/salaries.csv)

---
### Table 2:
Employees that were hired in 1986.

![employees_hired_1986.png](https://github.com/Taireagan/Pewlett_Hackard_Analysis/blob/main/Images/employees_hired_1986.png)

**Resource File:**
[employees.csv](https://github.com/Taireagan/Pewlett_Hackard_Analysis/blob/main/data/employees.csv)

---
### Table 3:
List of managers for each department.

![manager_info.png](https://github.com/Taireagan/Pewlett_Hackard_Analysis/blob/main/Images/manager_info.png)

**Resource Files:**
[departments.csv](https://github.com/Taireagan/Pewlett_Hackard_Analysis/blob/main/data/departments.csv), [dept_manager.csv](https://github.com/Taireagan/Pewlett_Hackard_Analysis/blob/main/data/dept_manager.csv), [employees.csv](https://github.com/Taireagan/Pewlett_Hackard_Analysis/blob/main/data/employees.csv)

---
### Table 4:
List of employees by department.

![employee_info.png](https://github.com/Taireagan/Pewlett_Hackard_Analysis/blob/main/Images/employee_info.png)

**Resource File:**
[employees.csv](https://github.com/Taireagan/Pewlett_Hackard_Analysis/blob/main/data/employees.csv)

---
### Table 5:
List of employees with the name Hercules and last name beginning with a 'B'.

![employees_named_hercules.png](https://github.com/Taireagan/Pewlett_Hackard_Analysis/blob/main/Images/employees_named_hercules.png)

**Resource File:**
[employees.csv](https://github.com/Taireagan/Pewlett_Hackard_Analysis/blob/main/data/employees.csv)

---
### Table 6:
List of employees in the Sales department.

![sales_department.png](https://github.com/Taireagan/Pewlett_Hackard_Analysis/blob/main/Images/sales_department.png)

**Resource Files:**
[employees.csv](https://github.com/Taireagan/Pewlett_Hackard_Analysis/blob/main/data/employees.csv),[dept_emp.csv](https://github.com/Taireagan/Pewlett_Hackard_Analysis/blob/main/data/dept_emp.csv)

---
### Table 7:
List of employees in the Sales and Development department.

![sales_development_departments.png](https://github.com/Taireagan/Pewlett_Hackard_Analysis/blob/main/Images/sales_development_departments.png)

**Resource Files:**
[employees.csv](https://github.com/Taireagan/Pewlett_Hackard_Analysis/blob/main/data/employees.csv),[dept_emp.csv](https://github.com/Taireagan/Pewlett_Hackard_Analysis/blob/main/data/dept_emp.csv),[departments.csv](https://github.com/Taireagan/Pewlett_Hackard_Analysis/blob/main/data/departments.csv)

---
### Table 8:
How many employees shared each last name in descending order.

![last_name_frequency.png](https://github.com/Taireagan/Pewlett_Hackard_Analysis/blob/main/Images/last_name_frequency.png)

**Resource File:**
[employees.csv](https://github.com/Taireagan/Pewlett_Hackard_Analysis/blob/main/data/employees.csv)