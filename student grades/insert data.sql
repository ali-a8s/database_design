INSERT INTO students (student_number, name, email) VALUES
('14011001', 'Ali Rezaei', 'ali.rezaei@student.com'),
('14011002', 'Sara Hosseini', 'sara.hosseini@student.com'),
('14011003', 'Mohammad Ahmadi', 'mohammad.ahmadi@student.com'),
('14011004', 'Fatemeh Karimi', 'fatemeh.karimi@student.com'),
('14011005', 'Hossein Mousavi', 'hossein.mousavi@student.com');

INSERT INTO teachers (name, email) VALUES
('Dr. Reza Pourmirza', 'reza.pourmirza@university.ac.ir'),
('Prof. Maryam Shahbazi', 'maryam.shahbazi@university.ac.ir'),
('Dr. Amir Hosseinpour', 'amir.hosseinpour@university.ac.ir'),
('Ms. Leila Nazari', 'leila.nazari@university.ac.ir');

INSERT INTO courses (course_code, title, teacher_id) VALUES
('CS101', 'Introduction to Programming', 1),
('MATH201', 'Calculus II', 2),
('PHY150', 'General Physics I', 3),
('CS205', 'Data Structures', 1),
('ENG110', 'English for Academic Purposes', 4);

INSERT INTO grades (student_id, course_id, grade, semester, academic_year) VALUES
(1, 1, 18.50, 'Fall', 2024),
(1, 2, 16.75, 'Fall', 2024),
(1, 3, 19.00, 'Fall', 2024),
(2, 1, 17.25, 'Fall', 2024),
(2, 4, 20.00, 'Fall', 2024),
(3, 2, 14.50, 'Fall', 2024),
(3, 5, 18.00, 'Fall', 2024),
(4, 1, 19.50, 'Fall', 2024),
(4, 3, 15.75, 'Fall', 2024),
(5, 4, 17.00, 'Fall', 2024),
(1, 5, 18.25, 'Spring', 2024),
(2, 3, 16.00, 'Spring', 2024);