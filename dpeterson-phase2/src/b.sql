
/*
Goal 1: Insert a new job computer science assistant professor listing into the Jobs table.
*/
INSERT INTO Jobs(job_id, position_title, department, tenure_track, full_time, part_time, adjunct, hourly, per_hour_wage, salary, listing_date, end_listing_date, openings)
VALUES (10000, 'Assistant Professor', 'Computer Science', FALSE, TRUE, FALSE, FALSE, FALSE, 88.00, 90000, '2023-04-04 20:00:00', '2023-07-10 20:00:00', 1);

/*
Goal 2: Update the salary for the new computer science job listing we added.
*/
UPDATE Jobs
SET salary = 120000
WHERE job_id = 10000;

/*
Goal 3: Delete rejection letters pre covid
*/
DELETE FROM Letters
WHERE offer_or_rejection = 'Rejection' AND rejection_date < '2019-12-12 23:00:00';

/*
Goal 4: Increase the maximum faculty capacity for the computer science department
*/
UPDATE Departments
SET max_faculty_capacity = max_faculty_capacity + 2
WHERE name = 'Computer Science';

/*
Goal 5:Suppose you are looking for a little more wisdom in the department, and want to give an edge 
to older candidates before they pass through your algorithm for cutting candidates who don’t have 
enough qualifications. So, for any candidate aged between 55 and 70, you reduce their age by five years. 
*/
UPDATE Candidates
SET age = age - 5
WHERE age >= 55 AND age <= 70;

