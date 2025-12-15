# Library Management System

### Tables

#### `departments`
- `id`
- `name`

#### `roles`
- `id`
- `title`
- `department_id`


#### `employees`
- `id`
- `full_name`
- `email`
- `phone_number`
- `gender`
- `hire_date`
- `department_id`
- `role_id`
- `manager_id`
- `is_active`

#### `salaries`
- `id`
- `employee_id`
- `amount`
- `from_date`
- `to_date`


### Queries 
- `all active employees `
- `number of employees for each department`
- `employee without manager`
- `employees name and salaries `
- `employees of a department `
- `average salary for each department `
- `employees hire in 2023`
- `history of salary of one employee `
- `emplyees with highest salary in each department`

