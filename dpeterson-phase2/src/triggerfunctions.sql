/* Our Procedure */
CREATE PROCEDURE update_unutilized_positions
BEGIN
        /*
        max faculty - current faculty - openings
        */
    UPDATE Departments
        INNER JOIN
        (
                SELECT (max_faculty_capacity - current_number_of_faculty - A.openings_sum) AS "unutilized_positions", department
                FROM Departments
                INNER JOIN
                (
                        SELECT  department, SUM(openings) AS "openings_sum"
                        FROM Jobs
                        GROUP BY department
                ) A
                ON Departments.name = A.department
        ) B
        ON Departments.name = B.department
        SET Departments.unutilized_positions = B.unutilized_positions
END;
    
  
Our Query Utilizing the Procedure
Find the departments with unutilized positions greater than 5
CALL update_unutilized_positions;
SELECT
    name,
    unutilized_positions
FROM Departments
WHERE unutilized_positions > 5;



DELIMITER //

CREATE FUNCTION CalcAvg(IN dept_name VARCHAR(255))
RETURNS FLOAT
BEGIN
    DECLARE avg_salary FLOAT;
    
    SELECT AVG(salary) INTO avg_salary
    FROM Jobs
    WHERE department = dept_name; 
    
    RETURN avg_salary;
END //

DELIMITER ;

DELIMITER //

CREATE TRIGGER UpdateOnJobDeletion
AFTER DELETE ON Jobs
FOR EACH ROW
BEGIN
    DECLARE job_type BOOLEAN;
    DECLARE avg_sal DECIMAL(10, 2);
    
    SELECT full_time INTO job_type
    FROM Jobs
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
END; //
DELIMITER ;

