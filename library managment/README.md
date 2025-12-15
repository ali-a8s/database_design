# Library Management System

### Tables

#### `authors`
- `id` 
- `name` 
- `nationality` 
- `birth_year` 
- `death_year`

#### `books`
- `id` 
- `title`
- `author_id`
- `is_available` 

#### `members`
- `id` 
- `name` 
- `phone`
- `email` 
- `join_at` 

#### `loans`
- `id` 
- `member_id` 
- `book_id`
- `borrow_at` 
- `return_date` 


### Queries 
- `create authors table`
- `create books table`
- `create members table`
- `create loans table`
