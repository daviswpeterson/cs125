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
    
        
