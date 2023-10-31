
/*
Query objective: Retrieve the details of candidates who have applied for an Associate Professor position along with their contact information.

Query: Who are the candidates that have applied for an associate professor position? 
*/
SELECT Candidates.*, Applications.Date
FROM Candidates 
INNER JOIN Applications ON Candidates.Email = Applications.candidate
WHERE Applications.Job = 'Associate Professor';
  
/*
Query Objective: Find the average salary for all the jobs listed in the database.

Query: What is the average salary for all jobs?
*/
SELECT AVG(Salary) AS AverageSalary
FROM Jobs;
  
/*
Query Objective: Find the department with the maximum number of faculty capacity.
Query: Which department is able to have the most amount of faculty members?
*/
SELECT Name, Max_Faculty_Capacity
FROM Departments
WHERE Max_Faculty_Capacity = (SELECT MAX(Max_Faculty_Capacity) FROM Departments);
  
/*
Query Objective: Retrieve the details of candidates who have a PhD and more than 10 years of experience.
Query: Who are the candidates with a PHD and at least 10 years of experience?
*/
SELECT *
FROM Candidates
WHERE Degree_Level = 'PhD' AND Years_of_Experience > 10;
  
/*
Query Objective:: Find the job listings that have not yet ended.
Query: What are the jobs that have been listed that have not ended yet?
*/
SELECT *
FROM Jobs
WHERE End_Listing_Date > GETDATE();
