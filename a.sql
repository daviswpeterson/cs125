
/*
Question 1: Retrieve the details of candidates who have applied for an Associate Professor position along with their contact information.
*/
SELECT Candidates.*, Applications.date
FROM Candidates 
INNER JOIN Applications ON Candidates.email = Applications.Candidate
WHERE Applications.job = 'Associate Professor';

/*
Question 2: Find the average salary for all the jobs listed in the database.
*/
SELECT AVG(salary) AS AverageSalary
FROM Jobs;

  
/*
Question 3: Find the department with the maximum number of faculty capacity.
*/
SELECT name, max_faculty_capacity
FROM Departments
WHERE max_faculty_capacity = (SELECT MAX(max_faculty_capacity) FROM Departments);


  
/*
Question 4: Retrieve the details of candidates who have a PhD and more than 10 years of experience.
*/
SELECT *
FROM Candidates
WHERE degree_level = 'PhD' AND years_experience > 10;

/*
Question 5: Find the job listings that have not yet ended.
*/
SELECT *
FROM Jobs
WHERE end_listing_date > GETDATE();

