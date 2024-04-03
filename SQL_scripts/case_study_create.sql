CREATE SCHEMA case_study;

USE case_study;

CREATE TABLE student (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    student_name VARCHAR(255),
    email VARCHAR(255),
    address VARCHAR(255),
    phone_mobile VARCHAR(15),
    date_of_birth DATE, -- New field added
    gpa DECIMAL(3,2)
);

CREATE TABLE department (
    department_id INT AUTO_INCREMENT PRIMARY KEY,
    department_name VARCHAR(255)
);

CREATE TABLE course (
    course_id INT AUTO_INCREMENT PRIMARY KEY,
    course_name VARCHAR(255),
    department_id INT,
    credit_hours INT, -- New field added
    FOREIGN KEY (department_id) REFERENCES department(department_id)
);

CREATE TABLE grade (
    grade VARCHAR(2) PRIMARY KEY
);

CREATE TABLE enrollment (
    student_id INT,
    course_id INT,
    grade VARCHAR(2),
    PRIMARY KEY (student_id, course_id),
    FOREIGN KEY (student_id) REFERENCES student(student_id),
    FOREIGN KEY (course_id) REFERENCES course(course_id),
    FOREIGN KEY (grade) REFERENCES grade(grade)
);
