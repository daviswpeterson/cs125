CREATE FUNCTION sample3.function_name ()
RETURNS DECIMAL(6,5) AS
BEGIN
    ratio = SELECT MAX(years_experience / age) FROM Candidates WHERE
    RETURN ratio
END;

