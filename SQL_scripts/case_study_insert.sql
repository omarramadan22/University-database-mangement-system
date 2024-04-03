-- Inserting values into the department table
INSERT INTO case_study.department (department_name) VALUES
('Computer Science'),
('Mathematics'),
('Physics'),
('Chemistry'),
('Biology');

-- Inserting values into the grade table
INSERT INTO case_study.grade (grade) VALUES
('A+'), ('A'), ('A-'), -- Grade 'A' values
('B+'), ('B'), ('B-'), -- Grade 'B' values
('C+'), ('C'), ('C-'), -- Grade 'C' values
('D+'), ('D'), ('D-'), -- Grade 'D' values
('F'); -- Grade 'F'

-- Inserting values into the course table with credit hours
INSERT INTO case_study.course (course_name, department_id, credit_hours) VALUES
('Introduction to Programming', 1, 2),
('Database Management', 1, 2),
('Calculus I', 2, 3),
('Linear Algebra', 2, 3),
('Mechanics', 3, 3),
('Data Structures', 1, 3),
('Software Engineering', 1, 3),
('Calculus II', 2, 3),
('Statistics', 2, 3),
('Thermodynamics', 3, 2);

-- Inserting values into the student table with date of birth
INSERT INTO case_study.student (student_name, email, address, phone_mobile, date_of_birth) VALUES
('omar ramadan', 'omar@email.com', '123 Main St', '123-456-7890', '1998-05-15'),
('diaa ahmed', 'diaa@email.com', '456 Oak St', '987-654-3210', '1999-07-20'),
('menna mamdouh', 'menna@email.com', '789 Elm St', '111-222-3333', '2000-01-10'),
('mahmoud hatem', 'mahmoud@email.com', '987 Pine St', '555-666-7777', '1997-09-28'),
('emad adel', 'emad@email.com', '456 Maple St', '999-888-7777', '1996-12-03'),
('hassan hosny', 'hassan@email.com', '789 Cedar St', '444-333-2222', '1999-03-18'),
('mohamed karam', 'mohamed@email.com', '321 Birch St', '777-888-9999', '1998-08-22'),
('eslam fayez', 'eslam@email.com', '654 Walnut St', '222-333-4444', '1997-11-05'),
('shrouk abd elraaof', 'shrouk@email.com', '789 Oak St', '111-222-3333', '2000-04-30'),
('nourhan elsayed', 'nourhan@email.com', '987 Elm St', '999-888-7777', '1998-06-12'),
('sherif sharaf', 'sherif@email.com', '123 Cedar St', '555-666-7777', '1999-10-17'),
('mariam morkos', 'mariam@email.com', '456 Walnut St', '999-888-7777', '1996-02-25'),
('ahmed hatem', 'ahmed@email.com', '789 Maple St', '444-333-2222', '1997-04-08'),
('mohamed saeed', 'mohamed@email.com', '321 Pine St', '777-888-9999', '1999-11-11'),
('mostafa mohamed', 'mostafa@email.com', '654 Birch St', '222-333-4444', '1998-09-03'),
('youssef saber', 'youssef@email.com', '987 Elm St', '111-222-3333', '2000-06-28'),
('yassa rashad', 'yassa@email.com', '123 Oak St', '555-666-7777', '1997-08-13'),
('abdallah attia', 'abdallah@email.com', '456 Cedar St', '999-888-7777', '1996-10-07'),
('ibrahim elnawasany', 'ibrahim@email.com', '789 Walnut St', '444-333-2222', '1998-03-21'),
('mohamed elsayed', 'mohamed@email.com', '321 Maple St', '777-888-9999', '1999-01-19');
-- Inserting values into the enrollment table for 20 students
-- Inserting values into the enrollment table with various grades
INSERT INTO enrollment (student_id, course_id, grade) VALUES
(1, 7, 'A+'), (1, 8, 'A'), 
(2, 9, 'A-'), (2, 4, 'B+'), 
(3, 5, 'B'), (4, 7, 'B-'), 
(4, 8, 'C+'), (5, 10, 'C'), 
(5, 5, 'C-'), (6, 2, 'D+'), 
(6, 1, 'D'), (7, 4, 'D-'), 
(7, 10, 'F'), (8, 3, 'A+'), 
(8, 8, 'A'), (9, 9, 'A-'), 
(9, 2, 'B+'), (10, 1, 'B'), 
(10, 3, 'B-'), (11, 3, 'C+'), 
(11, 1, 'C'), (12, 5, 'C-'), 
(12, 6, 'D+'), (13, 8, 'D'), 
(13, 2, 'D-'), (14, 4, 'F'), 
(14, 5, 'A+'), (15, 10, 'A'), 
(15, 8, 'A-'), (16, 3, 'B+'), 
(16, 8, 'B'), (17, 5, 'B-'), 
(17, 10, 'C+'), (18, 9, 'C'), 
(18, 8, 'C-'), (19, 4, 'D+'), 
(19, 7, 'D'), (20, 5, 'D-'), 
(20, 9, 'F'),
-- Additional Grades
(1, 2, 'A'), (2, 7, 'A-'), 
(3, 8, 'A+'), (4, 9, 'B'), 
(5, 1, 'B+'), (6, 10, 'B-'), 
(7, 3, 'C'), (8, 4, 'C+'), 
(9, 5, 'C-'), (10, 6, 'D'), 
(11, 7, 'D+'), (12, 8, 'D-'), 
(13, 9, 'F'), (14, 10, 'A'), 
(15, 1, 'A-'), (16, 2, 'A+'), 
(17, 3, 'B'), (18, 4, 'B+'), 
(19, 5, 'B-'), (20, 6, 'C'), 
(1, 9, 'C+'), (2, 10, 'C-'), 
(3, 1, 'D'), (4, 2, 'D+'), 
(5, 3, 'D-'), (6, 4, 'F'), 
(7, 5, 'A'), (8, 6, 'A-'), 
(9, 7, 'A+'), (10, 8, 'B'), 
(11, 9, 'B+'), (12, 10, 'B-'), 
(13, 1, 'C'), (14, 2, 'C+'), 
(15, 3, 'C-'), (16, 4, 'D'), 
(17, 6, 'D+'), (18, 6, 'D-'), 
(19, 10, 'F'), (20, 8, 'A');
