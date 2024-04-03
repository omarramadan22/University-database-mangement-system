 DELIMITER //

CREATE PROCEDURE update_student (
    IN p_student_id INT,
    IN p_student_name VARCHAR(255),
    IN p_email VARCHAR(255),
    IN p_address VARCHAR(255),
    IN p_phone_mobile VARCHAR(15) ,
    IN p_date_of_birth DATE 
)
BEGIN
    UPDATE student
    SET
        student_name = p_student_name,
        email = p_email,
        address = p_address,
        phone_mobile = p_phone_mobile ,
        date_of_birth = p_date_of_birth
    WHERE
        student_id = p_student_id;
END //

DELIMITER ;