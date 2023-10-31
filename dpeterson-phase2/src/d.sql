/* d.sql 

‘’’ Creation statements */

CREATE INDEX degree_index ON Candidates(degree_level) ;

CREATE INDEX real_job_id ON Jobs(job_id, position_title);



/* Deletion Statements */

DROP INDEX degree_index ON Candidates;

DROP INDEX real_job_id ON Jobs;


/* Running timed sequences for the Queries */

EXPLAIN SELECT Candidates.*, Applications.date
FROM Candidates 
INNER JOIN Applications ON Candidates.email = Applications.candidate
WHERE Applications.job = 'Associate Professor';


EXPLAIN SELECT AVG(salary) AS AverageSalary
FROM Jobs;

EXPLAIN SELECT name, max_faculty_capacity
FROM Departments
WHERE max_faculty_capacity = (SELECT MAX(max_faculty_capacity) FROM Departments);


EXPLAIN SELECT *
FROM Candidates
WHERE degree_level = 'PhD' AND years_experience > 10;


EXPLAIN SELECT *
FROM Jobs
WHERE end_listing_date > TIMESTAMP;
