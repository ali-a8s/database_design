INSERT INTO departments (name) VALUES
('Engineering'),
('Sales'),
('Marketing'),
('Human Resources'),
('Finance'),
('IT Support'),
('Research & Development');


INSERT INTO roles (title, department_id) VALUES
('Software Engineer', 1),
('Senior Software Engineer', 1),
('Engineering Manager', 1),
('Sales Representative', 2),
('Sales Manager', 2),
('Marketing Specialist', 3),
('HR Manager', 4),
('Recruiter', 4),
('Financial Analyst', 5),
('Accountant', 5),
('IT Support Specialist', 6),
('Research Scientist', 7);


INSERT INTO employees (full_name, email, phone_number, gender, hire_date, department_id, role_id, manager_id, is_active) VALUES
-- Engineering department
('John Smith', 'john.smith@company.com', '09121111111', 'male', '2020-03-15 09:00:00+03:30', 1, 3, NULL, true),
('Sarah Johnson', 'sarah.j@company.com', '09122222222', 'female', '2019-06-10 08:30:00+03:30', 1, 2, 1, true),
('Michael Chen', 'michael.chen@company.com', '09123333333', 'male', '2021-01-20 10:00:00+03:30', 1, 1, 1, true),
('Emma Wilson', 'emma.wilson@company.com', '09124444444', 'female', '2022-08-05 09:15:00+03:30', 1, 1, 2, true),

-- Sales department
('Robert Brown', 'robert.brown@company.com', '09125555555', 'male', '2018-11-12 08:00:00+03:30', 2, 5, NULL, true),
('Lisa Taylor', 'lisa.taylor@company.com', '09126666666', 'female', '2020-09-18 08:45:00+03:30', 2, 4, 5, true),
('David Miller', 'david.miller@company.com', '09127777777', 'male', '2023-02-28 09:30:00+03:30', 2, 4, 5, true),

-- Marketing department
('Jennifer Lee', 'jennifer.lee@company.com', '09128888888', 'female', '2021-04-22 10:00:00+03:30', 3, 6, NULL, true),

-- HR department
('Kevin Wilson', 'kevin.wilson@company.com', '09129999999', 'male', '2017-05-30 08:00:00+03:30', 4, 7, NULL, true),
('Maria Garcia', 'maria.garcia@company.com', '09120000000', 'female', '2022-11-14 09:00:00+03:30', 4, 8, 10, true),

-- Finance department
('Thomas Anderson', 'thomas.a@company.com', '09121112222', 'male', '2019-08-25 08:30:00+03:30', 5, 9, NULL, true),
('Sophia Martinez', 'sophia.m@company.com', '09121113333', 'female', '2023-01-10 09:00:00+03:30', 5, 10, 12, true),

-- IT Support department
('Alex Turner', 'alex.turner@company.com', '09121114444', 'male', '2020-12-01 08:00:00+03:30', 6, 11, NULL, true),

-- Research & Development
('Dr. Olivia Scott', 'olivia.scott@company.com', '09121115555', 'female', '2016-09-05 10:00:00+03:30', 7, 12, NULL, true),

-- Inactive employee (left company)
('James Wilson', 'james.w@company.com', '09121116666', 'male', '2021-07-15 09:00:00+03:30', 1, 1, 1, false);


INSERT INTO salaries (employee_id, amount, from_date, to_date) VALUES
-- Current salaries
(1, 95000000, '2023-06-01 00:00:00+03:30', NULL),
(2, 75000000, '2023-06-01 00:00:00+03:30', NULL),
(3, 50000000, '2023-03-01 00:00:00+03:30', NULL),
(4, 45000000, '2023-08-05 00:00:00+03:30', NULL),
(5, 85000000, '2023-01-01 00:00:00+03:30', NULL),
(6, 55000000, '2023-09-18 00:00:00+03:30', NULL),
(7, 48000000, '2023-02-28 00:00:00+03:30', NULL),
(8, 60000000, '2023-04-22 00:00:00+03:30', NULL),
(9, 70000000, '2023-05-30 00:00:00+03:30', NULL),
(10, 40000000, '2023-11-14 00:00:00+03:30', NULL),
(11, 80000000, '2023-01-01 00:00:00+03:30', NULL),
(12, 45000000, '2023-01-10 00:00:00+03:30', NULL),
(13, 50000000, '2023-12-01 00:00:00+03:30', NULL),
(14, 90000000, '2023-06-01 00:00:00+03:30', NULL),

-- Historical salary records (promotions/raises)
(1, 80000000, '2022-01-01 00:00:00+03:30', '2023-05-31 23:59:59+03:30'),
(1, 65000000, '2021-01-01 00:00:00+03:30', '2021-12-31 23:59:59+03:30'),
(2, 60000000, '2022-06-10 00:00:00+03:30', '2023-05-31 23:59:59+03:30'),
(3, 45000000, '2022-01-20 00:00:00+03:30', '2023-02-28 23:59:59+03:30'),
(5, 75000000, '2022-01-01 00:00:00+03:30', '2022-12-31 23:59:59+03:30'),
(14, 75000000, '2021-01-01 00:00:00+03:30', '2023-05-31 23:59:59+03:30'),

-- Employee who left (has end date)
(15, 42000000, '2022-07-15 00:00:00+03:30', '2023-12-31 23:59:59+03:30');