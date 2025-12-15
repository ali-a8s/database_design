-- create tables 
CREATE TABLE students (
	id SERIAL PRIMARY KEY, 
	student_number CHAR(8) NOT NULL UNIQUE,
	name VARCHAR(250) NOT NULL, 
	email VARCHAR(150) UNIQUE NOT NULL,
	created_at TIMESTAMPTZ DEFAULT NOW()
);

CREATE TABLE teachers (
    id SERIAL PRIMARY KEY,
    name VARCHAR(250) NOT NULL,
    email VARCHAR(150) UNIQUE
);

CREATE TABLE courses (
    id SERIAL PRIMARY KEY,
    course_code VARCHAR(10) NOT NULL UNIQUE,
    title VARCHAR(250) NOT NULL,
    teacher_id INTEGER REFERENCES teachers(id) ON DELETE SET NULL
);

CREATE TABLE grades (
	id SERIAL PRIMARY KEY,
	student_id INTEGER REFERENCES students(id) ON DELETE CASCADE, 
	course_id INTEGER REFERENCES courses(id) ON DELETE CASCADE,
	grade NUMERIC(4, 2) NOT NULL CHECK (grade >= 0 AND grade <= 20),
	semester VARCHAR(20),  
	academic_year INTEGER,
	submitted_at TIMESTAMPTZ DEFAULT NOW(),
	UNIQUE(student_id, course_id, semester, academic_year)
);


-- create indexes
CREATE INDEX idx_strudent ON students (student_number) ;
CREATE INDEX idx_teacher ON teachers (id);
CREATE INDEX idx_course ON courses (course_code);
CREATE INDEX idx_grade ON grades(id);