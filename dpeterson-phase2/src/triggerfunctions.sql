/* Our Procedure */
CREATE PROCEDURE 
    update_unutilized_positions
    MODIFIES SQL DATA
BEGIN
    DECLARE jobs_cursor CURSOR FOR SELECT department, openings FROM Jobs;
    OPEN jobs_cursor;
    FETCH NEXT FROM jobs_cursor;
        WHILE (@@FETCH_STATUS = 0)
        /*
        max faculty - current faculty - openings
        */
        BEGIN;
            FETCH NEXT FROM jobs_cursor INTO dept, number_of_openings;
            UPDATE Departments
            SET unutilized_positions = Departments.max_faculty_capacity - Departments.current_number_of_faculty - number_of_openings
            WHERE Departments.name = dept;
        END;
    CLOSE jobs_cursor;
    DEALLOCATE jobs_cursor;
END;
    
        
/* Our Query Utilizing the Procedure */
/* Find the departments with unutilized positions greater than 5 */
CALL update_unutilized_positions;
SELECT
    name,
    unutilized_positions
FROM Departments
WHERE unutilized_positions > 5;




CREATE FUNCTION CalculateAverageSalary(dept_name VARCHAR(255))
RETURNS DECIMAL(10, 2)
BEGIN
    DECLARE avg_salary DECIMAL(10, 2);
    
    SELECT AVG(salary) INTO avg_salary
    FROM jobs
    WHERE department = dept_name;
    
    RETURN avg_salary;
END //


CREATE TRIGGER UpdateOnJobDeletion
AFTER DELETE ON jobs
FOR EACH ROW
BEGIN
    DECLARE job_type BOOLEAN;
    DECLARE avg_sal DECIMAL(10, 2);
    
    SELECT full_time INTO job_type
    FROM jobs
    WHERE job_id = OLD.job_id;
    
    IF job_type = TRUE THEN
        UPDATE departments
        SET current_number_of_faculty = current_number_of_faculty - 1
        WHERE name = OLD.department;
        
        SET avg_sal = (SELECT CalculateAverageSalary(OLD.department));
        
        UPDATE departments
        SET average_salary = avg_sal
        WHERE name = OLD.department;
    END IF;
END //

