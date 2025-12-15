CREATE TABLE departments (
	id SERIAL PRIMARY KEY, 
	name VARCHAR(250) UNIQUE
);


CREATE TABLE roles (
	id SERIAL PRIMARY KEY, 
	title VARCHAR(250) UNIQUE,
	department_id INTEGER REFERENCES departments(id) ON DELETE CASCADE
);


CREATE TABLE employees (
	id SERIAL PRIMARY KEY,
	full_name VARCHAR(250) NOT NULL, 
	email VARCHAR(250) UNIQUE,
	phone_number VARCHAR(11) UNIQUE, 
	gender VARCHAR CHECK (gender IN ('male', 'female')),
	hire_date TIMESTAMPTZ DEFAULT NOW(), 
	department_id INTEGER REFERENCES departments(id) ON DELETE CASCADE,
	role_id INTEGER REFERENCES roles(id) ON DELETE CASCADE,
	manager_id INTEGER,
	is_active BOOLEAN DEFAULT TRUE
);


ALTER TABLE employees
ADD CONSTRAINT fk_manager
FOREIGN KEY (manager_id) 
REFERENCES employees(id)
ON DELETE SET NULL;


CREATE TABLE salaries (
	id SERIAL PRIMARY KEY,
	employee_id INTEGER REFERENCES employees(id) ON DELETE CASCADE, 
	amount INTEGER CHECK (amount > 0),
	from_date TIMESTAMPTZ,
	to_date TIMESTAMPTZ CHECK (to_date > from_date)
);


CREATE INDEX idx_employee_department ON employees(id);
CREATE INDEX idx_employee_role ON employees(id);
CREATE INDEX idx_salary_employee ON salaries(id);