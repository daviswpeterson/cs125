
/*
Question 1: Retrieve the details of candidates who have applied for an Associate Professor position along with their contact information.
*/
SELECT Candidates.*, Applications.Date
FROM Candidates 
INNER JOIN Applications ON Candidates.Email = Applications.Candidate
WHERE Applications.Job = 'Associate Professor';
  
/*
Question 2: Find the average salary for all the jobs listed in the database.
*/
SELECT AVG(Salary) AS AverageSalary
FROM Jobs;
  
/*
Question 3: Find the department with the maximum number of faculty capacity.
*/
SELECT Name, Max_Faculty_Capacity
FROM Departments
WHERE Max_Faculty_Capacity = (SELECT MAX(Max_Faculty_Capacity) FROM Departments);
  
/*
Question 4: Retrieve the details of candidates who have a PhD and more than 10 years of experience.
*/
SELECT *
FROM Candidates
WHERE Degree_Level = 'PhD' AND Years_of_Experience > 10;
  
/*
Question 5: Find the job listings that have not yet ended.
*/
SELECT *
FROM Jobs
WHERE End_Listing_Date > GETDATE();
