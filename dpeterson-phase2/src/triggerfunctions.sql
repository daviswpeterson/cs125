-- Create PL/pgSQL function
CREATE OR REPLACE FUNCTION update_department_average_age()
RETURNS VOID AS $$
DECLARE
    department_name VARCHAR(255);
    total_age INT;
    candidate_count INT;
    average_age FLOAT;
BEGIN
    -- Loop through each department
    FOR department_name IN (SELECT name FROM Departments) LOOP
        -- Initialize variables
        total_age := 0;
        candidate_count := 0;

        -- Calculate total age and candidate count for the department
        FOR total_age, candidate_count IN
            SELECT SUM(age), COUNT(*) FROM Candidates
            WHERE department_name = previous_occupation
        LOOP
            -- Calculate average age
            IF candidate_count > 0 THEN
                average_age := total_age / candidate_count;
            ELSE
                average_age := 0; -- Avoid division by zero
            END IF;

            -- Update the Departments table with the average age
            UPDATE Departments
            SET average_candidate_age = average_age
            WHERE name = department_name;
        END LOOP;
    END LOOP;
END;
$$ LANGUAGE plpgsql;

-- Call the function
SELECT update_department_average_age();

