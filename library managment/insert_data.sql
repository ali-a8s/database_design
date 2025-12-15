-- authors 
INSERT INTO authors (name, nationality, birth_year, death_year) VALUES
('George Orwell', 'British', 1903, 1950),
('J.K. Rowling', 'British', 1965, NULL),
('Jane Austen', 'British', 1775, 1817),
('Gabriel García Márquez', 'Colombian', 1927, 2014),
('Harper Lee', 'American', 1926, 2016);

-- books
INSERT INTO books (title, author_id) VALUES
('1984', 1),
('Animal Farm', 1),                             
('Harry Potter and the Goblet of Fire', 2),
('Pride and Prejudice', 3),
('One Hundred Years of Solitude', 4),
('To Kill a Mockingbird', 5);

-- members 
INSERT INTO members (name, phone, email) VALUES
('John Smith', '09127777777', 'john@example.com'),
('Emma Wilson', '09128888888', 'emma.w@gmail.com'),
('Michael Brown', '09129999999', NULL),
('Olivia Davis', '09131111111', 'olivia@yahoo.com'),
('Liam Johnson', '09132222222', 'liam.j@example.com');

-- loans
INSERT INTO loans (member_id, book_id, borrow_at, return_date) VALUES
(1, 1, '2025-12-01 10:00:00+03:30', NULL),                   
(2, 3, '2025-12-05 14:30:00+03:30', '2025-12-12 11:00:00+03:30'),  
(3, 2, '2025-12-08 16:00:00+03:30', NULL),                  
(4, 5, '2025-12-10 12:15:00+03:30', NULL),                   
(5, 6, '2025-12-13 09:45:00+03:30', NULL);                 