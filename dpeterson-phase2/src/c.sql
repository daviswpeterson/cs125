/* c.sql */

/* Create a view to retrieve details of all candidates for all jobs our institution is offering with their application information: */

CREATE VIEW CandidatesForAllApplications AS
SELECT Candidates.*, Applications.*
FROM Candidates
INNER JOIN Applications ON Candidates.Email = Applications.Candidate;

/* This view will combine candidate details with the corresponding application information, providing a comprehensive view of
all candidates and their application details for the institution's offered jobs. 

Query for CandidatesForAllApplications: */
SELECT * FROM CandidatesForAllApplications LIMIT 100;


/* 2. Create a view to show job details for each job in its corresponding department: */

CREATE VIEW JobDetailsByDepartment AS
SELECT Jobs.*, Departments.name AS Department_Name
FROM Jobs
INNER JOIN Departments ON Jobs.Department = Departments.name;

/* This view will combine job details with the corresponding department information, providing a comprehensive view of each jobs’ details within their respective departments.

Query for JobDetailsByDepartment: */
SELECT * FROM JobDetailsByDepartment LIMIT 100;
