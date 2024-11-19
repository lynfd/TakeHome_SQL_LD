-- 1. Create a database
create database school_db;
use school_db;

-- 2. Create a table
create table students(
id int primary key auto_increment,
name VARCHAR(50),
grade_level VARCHAR(20),
average_score DECIMAL(4,2)
);

-- 3. Insert into the table John Doe
insert into students(name, grade_level, average_score)
values ("John Doe", "10th", 88.50);
-- 4. Insert more students into the table
insert into students(name, grade_level, average_score)
values ("Jane Smith", "10th", 91.20),
	("Mark Lee", "11th", 85.75),
    ("Emily Davis", "12th", 90.00);

-- 5. Retrieve all records
select * from students;

-- 6. Retrieve only name and average score
select name, average_score from students;

-- 7. Update John Doe's score from 88.50 to 90.00
select * from students;
update students
set average_score=90.00
where name='John Doe';
select * from students;

-- 8. Delete Mark Lee from the table
delete from students
where name='Mark Lee';
select * from students;

-- 9. Retrieve students in 10th grade with grades higher than 90
select name from students where grade_level='10th' and average_score>90.00;

-- 10. retrieve all student's names and scores by descending order
select name, average_score from students order by average_score desc;

