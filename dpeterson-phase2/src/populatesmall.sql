-- populatesmall.sql

-- Populating Candidates
INSERT INTO Candidates(degree_level, age, years_experience, previous_occupation, race, religious_affiliation, phone_number, email, last_degree_issued, ssn, gender, background_check_data) VALUES
('PhD', 32, 8, 'Research Scientist', 'Asian', 'None', '1234567890', 'john_doe@email.com', 'PhD in Computer Science', 111223333, 'Male', 'Clear'),
('Masters', 28, 5, 'Data Analyst', 'Caucasian', 'Christian', '2345678901', 'alice@email.com', 'MS in Data Science', 112233445, 'Female', 'Clear'),
('Bachelors', 45, 13, 'Professor', 'Caucasian', 'Christian', '4678639083', 'jeff_white@email.com', 'BS in Data Science', 112233446, 'Male', 'Clear'),
('PhD', 37, 12, 'Web Developer', 'African American', 'None', '8735658478', 'alice@email.com', 'PhD in Computer Science', 112233447, 'Female', 'Clear'),
('Bachelors', 55, 28, 'Data Analyst', 'Caucasian', 'Christian', '0276472908', 'alice@email.com', 'BS in Data Science', 112233449, 'Female', 'Clear'),
('Masters', 44, 20, 'Professor', 'Asian', 'Christian', '9835482618', 'clip_hamstring@email.com', 'MS in Computer Science', 112233442, 'Male', 'Clear'),
('Bachelors', 32, 6, 'IT', 'Latino', 'None', '6373927643', 'jimi_mudstank@email.com', 'BS in Computer Science', 112233448, 'Male', 'Clear'),
('PhD', 35, 10, 'Associate Professor', 'Caucasian', 'None', '1234567890', 'associate_prof1@email.com', 'PhD in Physics', '112233873', 'Male', 'Clear'),
('Masters', 40, 15, 'Associate Professor', 'Asian', 'Buddhist', '2345678901', 'associate_prof2@email.com', 'MS in Mathematics', '112233874', 'Female', 'Clear'),
('PhD', 38, 12, 'Associate Professor', 'African American', 'Christian', '3456789012', 'associate_prof3@email.com', 'PhD in Biology', '112233875', 'Male', 'Clear');

-- Populating Departments
INSERT INTO Departments(name, abbreviation, max_faculty_capacity, current_number_of_faculty, academic_division, unutilized_positions) VALUES
('Computer Science', 'CS', 100, 60, 'Engineering', NULL),
('Biology', 'BIO', 80, 55, 'Science', NULL),
('Mathematics', 'MATH', 90, 45, 'Science', NULL),
('History', 'HIST', 70, 30, 'Humanities', NULL),
('Electrical Engineering', 'EE', 110, 75, 'Engineering', NULL),
('Chemistry', 'CHEM', 85, 50, 'Science', NULL),
('Economics', 'ECON', 75, 40, 'Business', NULL),
('Psychology', 'PSYCH', 60, 35, 'Social Sciences', NULL),
('Mechanical Engineering', 'ME', 95, 70, 'Engineering', NULL),
('English', 'ENG', 80, 45, 'Humanities', NULL);

-- Populating Jobs
INSERT INTO Jobs(job_id, position_title, department, tenure_track, full_time, part_time, adjunct, hourly, per_hour_wage, salary, listing_date, end_listing_date, openings) VALUES
(1, 'Assistant Professor', 'Computer Science', TRUE, TRUE, FALSE, FALSE, FALSE, NULL, 70000, '2023-01-15 08:00:00', '2023-02-15 16:30:00', 4),
(2, 'Research Analyst', 'Biology', FALSE, TRUE, FALSE, FALSE, FALSE, NULL, 60000, '2023-01-20 09:15:00', '2023-02-20 15:45:00', 6),
(3, 'Associate Professor', 'Computer Science', TRUE, TRUE, FALSE, FALSE, FALSE, NULL, 90000, '2023-01-25 10:30:00', '2023-02-25 14:20:00', 5),
(4, 'Lab Technician', 'Biology', FALSE, TRUE, FALSE, FALSE, FALSE, NULL, 50000, '2023-01-30 11:45:00', '2023-02-28 17:10:00', 8),
(5, 'Assistant Professor', 'Mathematics', TRUE, TRUE, FALSE, FALSE, FALSE, NULL, 75000, '2023-02-10 12:20:00', '2023-11-11 14:50:00', 3),
(6, 'History Instructor', 'History', TRUE, TRUE, FALSE, FALSE, FALSE, NULL, 65000, '2023-02-15 13:35:00', '2023-03-15 16:25:00', 3),
(7, 'Electrical Engineer', 'Electrical Engineering', TRUE, TRUE, FALSE, FALSE, FALSE, NULL, 95000, '2023-02-20 14:40:00', '2023-03-20 15:55:00', 1),
(8, 'Chemistry Lab Assistant', 'Chemistry', FALSE, TRUE, FALSE, FALSE, FALSE, NULL, 55000, '2023-02-25 15:55:00', '2023-03-25 18:30:00', 9),
(9, 'Economics Professor', 'Economics', TRUE, TRUE, FALSE, FALSE, FALSE, NULL, 80000, '2023-05-05 16:45:00', '2023-12-12 19:15:00', 2),
(10, 'Psychology Researcher', 'Psychology', FALSE, TRUE, FALSE, FALSE, FALSE, NULL, 70000, '2023-03-05 17:30:00', '2023-04-05 20:00:00', 1);

-- Populating Applications
INSERT INTO Applications(application_id, job, job_id, position, tenure_track, date, candidate) VALUES
(1, 'Assistant Professor', 1, 'Computer Science', TRUE, '2023-01-20 09:30:00', 'john_doe@email.com'),
(2, 'Research Analyst', 2, 'Biology', FALSE, '2023-01-22 10:45:00', 'jane_doe@email.com'),
(3, 'Associate Professor', 3, 'Computer Science', TRUE, '2023-01-25 11:15:00', 'alice@email.com'),
(4, 'Lab Technician', 4, 'Biology', FALSE, '2023-01-28 12:30:00', 'bob@email.com'),
(5, 'Assistant Professor', 5, 'Mathematics', TRUE, '2023-02-05 13:45:00', 'carol@email.com'),
(6, 'History Instructor', 6, 'History', TRUE, '2023-02-10 14:00:00', 'dave@email.com'),
(7, 'Electrical Engineer', 7, 'Electrical Engineering', TRUE, '2023-02-15 15:20:00', 'emily@email.com'),
(8, 'Chemistry Lab Assistant', 8, 'Chemistry', FALSE, '2023-01-28', 'associate_prof1@email.com'),
(9, 'Economics Professor', 9, 'Economics', TRUE, '2023-02-02', 'associate_prof2@email.com'),
(10, 'Psychology Researcher', 10, 'Psychology', FALSE, '2023-02-05', 'associate_prof3@email.com');


-- Populating Letters
INSERT INTO Letters(letter_id, offer_or_rejection, job, start_date, next_steps, rejection_date, denial_reason) VALUES
(1, 'Offer', 'Assistant Professor', '2023-08-15 09:30:00', 'Please confirm by 2023-03-01 10:45:00', NULL, NULL),
(2, 'Rejection', 'Research Analyst', NULL, NULL, '2023-02-05 12:15:00', 'Position Filled'),
(3, 'Offer', 'Associate Professor', '2023-09-01 11:00:00', 'Please confirm by 2023-03-10 13:30:00', NULL, NULL),
(4, 'Rejection', 'Lab Technician', NULL, NULL, '2023-02-10 14:45:00', 'Candidate not qualified'),
(5, 'Offer', 'Assistant Professor', '2023-09-15 15:00:00', 'Please confirm by 2023-03-20 16:15:00', NULL, NULL),
(6, 'Rejection', 'Research Analyst', NULL, NULL, '2023-02-15 17:30:00', 'Skills mismatch'),
(7, 'Offer', 'History Instructor', '2023-10-01 18:45:00', 'Please confirm by 2023-03-25 19:00:00', NULL, NULL),
(8, 'Rejection', 'Electrical Engineer', NULL, NULL, '2023-02-20 20:15:00', 'Experience not suitable'),
(9, 'Offer', 'Chemistry Lab Assistant', '2023-10-15 21:30:00', 'Please confirm by 2023-04-01 22:45:00', NULL, NULL),
(10, 'Rejection', 'Economics Professor', NULL, NULL, '2023-03-05 23:00:00', 'Position already filled');
