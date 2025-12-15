-- create authors table
CREATE TABLE authors (
	id SERIAL PRIMARY KEY,
	name VARCHAR(255) NOT NULL,
	nationality VARCHAR(100),
	birth_year INTEGER,
	death_year INTEGER
);

-- create books table
CREATE TABLE books (
	id SERIAL PRIMARY KEY,
	title VARCHAR(255) NOT NULL,
	author_id INTEGER REFERENCES authors(id) ON DELETE CASCADE,
	is_available BOOLEAN DEFAULT TRUE
);

-- create members table
CREATE TABLE members (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    phone VARCHAR(11) NOT NULL UNIQUE,
    email VARCHAR(255),
    joined_at TIMESTAMPTZ DEFAULT NOW(),
    CONSTRAINT check_phone CHECK (length(phone) = 11)
);

-- create loans table
CREATE TABLE loans (
    id SERIAL PRIMARY KEY,
    member_id INTEGER REFERENCES members(id) ON DELETE CASCADE,
    book_id INTEGER REFERENCES books(id) ON DELETE RESTRICT,
    borrow_at TIMESTAMPTZ DEFAULT NOW(),
    return_date TIMESTAMPTZ,
	CHECK (return_date IS NULL OR return_date > borrow_at)
);