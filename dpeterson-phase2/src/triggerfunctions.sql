CREATE FUNCTION sample3.function_name ()
RETURNS DECIMAL(6,5) AS
BEGIN
    ratio = SELECT MAX(years_experience / age) FROM Candidates;
    RETURN ratio
END;

