# Database Management with MySQL

## Database: create, use, modify

`CREATE` : Create a database

> create a database named myDB

```sql
CREATE DATABASE myDB;
```

`USE` : use a database

> use the myDB database

```sql
USE myDB;
```

`DROP`: delete a database

> delete myDB database

```sql
DROP DATABASE myDB;
```

`READ ONLY`: disable modification.cannot make any modifications, can access data only.

> make myDB read only.

```sql
ALTER DATABASE myDB READ ONLY = 1;
```

To enable modification: Default mode

> make myDB to the default mode

```sql
ALTER DATABASE myDB READ ONLY = 0;
```

## Tables: create, insert, modify

`CREATE`: Create a table

```sql
CREATE TABLE employee(
  employee_id INT,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  hourly_pay DECIMAL(5,2),
  hire_date DATE
)
```

`RENAME`: Rename a table

> rename employees table as workers

```sql
RENAME TABLE employees TO workers;
```

Let's get back to employees

> rename workers table as employees

```sql
RENAME TABLE workers TO employees;
```

`ADD`: Add another column to a table

> add phone_number to employees

```sql
ALTER TABLE employees
ADD phone_number VARCHAR(15);
```

`RENAME`: Rename a column

> rename phone_number as email

```sql
ALTER TABLE employees
RENAME COLUMN phone_number to email;
```

`MODIFY`: Change column

> change the data type of email

```sql
ALTER TABLE employees
MODIFY COLUMN email VARCHAR(100);
```

`AFTER`: Move a column

> move email next to last_name

```sql
ALTER TABLE employees
MODIFY email VARCHAR(100)
AFTER last_name;
```

> move email column to first

```sql
ALTER TABLE employees
MODIFY email VARCHAR(100)
FIRST;
```

`DROP`: Drop a column

> drop the email column

```sql
ALTER TABLE employees
DROP COLUMN email;
```

`INSERT INTO`Insert a row to table

> insert data/row to employees

```sql
INSERT INTO employees
VALUES(1, "Tanveer", "Kader", 25.50, "2023-01-01");
```

`VALUES`: Insert multiple rows at a time

> insert some other data/rows to employees

```sql
INSERT INTO employees
VALUES(2, "Saif", "Jewel", 15.00, "2023-01-02"),
      (3, "Raihanul", "Islam", 25.50, "2023-01-03"),
      (4, "Emaz", "Uddin", 12.50, "2023-01-04"),
      (5, "Xin", "Akib", 17.50, "2023-01-05"),
      (6, "Sadrul", "Tanim", 12.50, "2023-01-06");
```

Insert data into selected columns

> insert only employee_id, first_name, last_name. The remaining columns will set to NULL

```sql
INSERT INTO employees(employee_id, first_name, last_name)
VALUES(2, "Abid", "Khan");
```

## Select: from, where

`SELECT`: Select all data from a table

> select all data from employees

```sql
SELECT * FROM employees;
```

Select prefered columns

> select only first_name & last_name from employees

```sql
SELECT first_name, last_name
FROM employees
```

Select specific data using `where` clause

> select the empoyee id 2

```sql
SELECT *
FROM employees
WHERE employee_id = 2;
```

> select whose first name is Xin

```sql
SELECT *
FROM employees
WHERE first_name = "Xin";
```

> select those who get paid more than 15

```sql
SELECT *
FROM employees
WHERE hourly_pay >= 15;
```

> select those who are hired before 2023-01-04

```sql
SELECT *
FROM employees
WHERE hire_date <= "2023-01-04";
```

> select all except employee id 3

```sql
SELECT *
FROM employees
WHERE employee_id != 3;
```

> select rows with hire date null

```sql
SELECT *
FROM employees
WHERE hire_date IS NULL;
```

> select rows without null

```sql
SELECT *
FROM employees
WHERE hire_date IS NOT NULL;
```

## Update: set

`UPDATE`: Change data in a row

> set employee id 7 to the last employee

```sql
UPDATE employees
SET employee_id = 7
WHERE first_name = "Abid";
```

`SET` :Change multiple columns at a time

> set hourly_pay and hire_date to last employee

```sql
UPDATE employees
SET hourly_pay = 10.25,
	hire_date = "2023-01-07"
WHERE employee_id = 7;
```

Set a field to null

> set hire_date null of employee 7

```sql
UPDATE employees
SET hire_date = NULL
WHERE employee_id = 7;
```

Set same value in a column

> set same hourly_pay for all the employees

```sql
UPDATE employees
SET hourly_pay = 10.25;
```

## Delete

`DELETE`: Delete a row from a table

> Delete employee_id 7

```sql
DELETE FROM employees
WHERE employee_id = 7;
```

Delete all rows from a table

> delete all rows from employees

```sql
DELETE FROM employees;
```

## Autocommit, Commit, Rollback

`Autocommit`: saves automaticaly.

> It maybe harmful for any accidental query run.

```sql
SET AUTOCOMMIT = OFF;
```

`Commit`: saving manually, creates a savepoint

```sql
COMMIT;
```

`Rollback`: get to previous state.

```sql
ROLLBACK;
```
