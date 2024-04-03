DELIMITER //

CREATE  TRIGGER update_gpa
AFTER INSERT ON enrollment
FOR EACH ROW
BEGIN
    DECLARE v_total_points DECIMAL(10,2);
    DECLARE v_total_hours DECIMAL(10,2); -- Adjusted for decimal precision
    DECLARE v_student_id INT;
    DECLARE v_gpa DECIMAL(10, 2); -- Adjusted for decimal precision

    -- Extracting values from the inserted row
    SET v_student_id = NEW.student_id;

    -- Calculate total points for all courses
    SELECT COALESCE(SUM(
        CASE 
            WHEN grade = 'A+' THEN 4.0 * course.credit_hours
            WHEN grade = 'A' THEN 4.0 * course.credit_hours
            WHEN grade = 'A-' THEN 3.7 * course.credit_hours
            WHEN grade = 'B+' THEN 3.3 * course.credit_hours
            WHEN grade = 'B' THEN 3.0 * course.credit_hours
            WHEN grade = 'B-' THEN 2.7 * course.credit_hours
            WHEN grade = 'C+' THEN 2.3 * course.credit_hours
            WHEN grade = 'C' THEN 2.0 * course.credit_hours
            WHEN grade = 'C-' THEN 1.7 * course.credit_hours
            WHEN grade = 'D+' THEN 1.3 * course.credit_hours
            WHEN grade = 'D' THEN 1.0 * course.credit_hours
            WHEN grade = 'D-' THEN 0.7 * course.credit_hours
            WHEN grade = 'F' THEN 0.0 * course.credit_hours
            ELSE 0.0
        END), 0)
    INTO v_total_points
    FROM enrollment
    INNER JOIN course ON enrollment.course_id = course.course_id
    WHERE enrollment.student_id = v_student_id;

    -- Calculate total credit hours for all courses
    SELECT COALESCE(SUM(course.credit_hours), 0)
    INTO v_total_hours
    FROM enrollment
    INNER JOIN course ON enrollment.course_id = course.course_id
    WHERE enrollment.student_id = v_student_id;

    -- Calculate GPA
    IF v_total_hours > 0 THEN
        SET v_gpa = v_total_points / v_total_hours;
    ELSE
        SET v_gpa = 0;
    END IF;

    -- Update GPA in the student table
    UPDATE student
    SET gpa = v_gpa
    WHERE student_id = v_student_id;
END //

DELIMITER ;
