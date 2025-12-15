# Student Grade System

### Tables

#### `students`
- `id`
- `student_number`
- `name`
- `email`
- `created_at`

#### `teachers`
- `id`
- `name`
- `email`

#### `courses`
- `id`
- `course_code`
- `title`
- `teacher_id`

#### `grades`
- `id`
- `student_id`
- `course_id`
- `grade`
- `semester`
- `academic_year`
- `submitted_at`


### Queries 
- `all courses with teacher name`
- `all students grades`
- `average grades for a student in specific semester`
- `students with the highest grades in a course `
