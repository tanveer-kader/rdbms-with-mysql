CREATE TABLE employee_check(
	employee_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    hourly_pay DECIMAL(5,2),
    hire_date DATE,
    CONSTRAINT minimum_wage CHECK(hourly_pay >= 10.00)
);