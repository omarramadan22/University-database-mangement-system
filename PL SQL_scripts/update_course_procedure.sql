DELIMITER //

CREATE PROCEDURE update_course (
    IN p_course_id INT,
    IN p_course_name VARCHAR(255),
    IN p_department_id INT , 
    IN p_credit_hours INT 
)
BEGIN
    UPDATE course
    SET
        course_name = p_course_name,
        department_id = p_department_id , 
        credit_hours = p_credit_hours
    WHERE
        course_id = p_course_id;
END //

DELIMITER ;