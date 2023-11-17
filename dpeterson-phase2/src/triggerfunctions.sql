CREATE PROCEDURE 
    procedure_name
    MODIFIES SQL DATA
BEGIN
    SET Counter=1
        WHILE (Counter < SELECT Count(*) FROM Jobs)
        /*
        Iterate through the rows of Jobs
        For each row SELECT the number of openings for each departments
        SET (for Departments) current_number_of_faculty = max_faculty_capacity - the above value 
        */
        BEGIN
            UPDATE Departments
        END
    
        
