
/*
Query objective: Retrieve the job listings with more than 5 openings available
Query: Job listings with more then 5 openings?

SELECT *
FROM Jobs
WHERE Openings > 5;




/*
Query Objective: Find the average salary for all the jobs listed in the database.

Query: What is the average salary for all jobs?
*/
SELECT AVG(salary) AS AverageSalary
FROM Jobs;

/*
Query Objective: Find the department with the maximum number of faculty capacity.
Query: Which department is able to have the most amount of faculty members?
*/
SELECT name, max_faculty_capacity
FROM Departments
WHERE max_faculty_capacity = (SELECT MAX(max_faculty_capacity) FROM Departments);

  
/*
Query Objective: Retrieve the details of candidates who have a PhD and more than 10 years of experience.
Query: Who are the candidates with a PHD and at least 10 years of experience?
*/
SELECT *
FROM Candidates
WHERE degree_level = 'PhD' AND years_experience > 10;

/*
Query Objective:: Find the job listings that have not yet ended.
Query: What are the jobs that have been listed that have not ended yet?
*/
SELECT *
FROM Jobs
WHERE end_listing_date < CURRENT_TIMESTAMP;



