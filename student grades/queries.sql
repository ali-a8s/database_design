-- all courses with teacher name
SELECT c.title AS "course name", t.name AS "techer name", t.email
FROM courses c
JOIN teachers t ON t.id=c.teacher_id;


-- all students grades 
SELECT c.title, t.name AS "teacher", g.grade, CONCAT(g.semester, ' ', g.academic_year) AS "semester"
FROM grades g
JOIN students s ON s.id=g.student_id
JOIN courses c ON c.id=g.course_id
JOIN teachers t ON t.id=c.teacher_id
WHERE s.student_number='14011001';


-- average grades for a student in specific semester
SELECT ROUND(AVG(grade)) AS "average"
FROM grades g
JOIN students s ON s.id=g.student_id
WHERE s.student_number='14011001' AND g.academic_year=2024 AND g.semester='Fall';


-- students with the highest grades in a course 
SELECT s.name, g.grade
FROM grades g
JOIN students s ON s.id=g.student_id
WHERE g.course_id=1
ORDER BY g.grade DESC;