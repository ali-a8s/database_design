-- list all available books 
SELECT *
FROM books
WHERE is_available=true;

-- books by a specific author 
SELECT b.title, b.is_available
FROM books b
JOIN authors a
ON a.id = b.author_id
WHERE b.author_id=3;

-- current loans
SELECT *
FROM loans
WHERE return_date IS NULL;

-- book loan history
SELECT *
FROM loans
WHERE book_id = 2;

-- member history 
SELECT *
FROM loans
WHERE member_id = 5;