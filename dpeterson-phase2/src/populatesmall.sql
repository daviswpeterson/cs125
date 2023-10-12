-- populatesmall.sql

-- Populating Candidates
INSERT INTO Candidates(degree_level, age, years_experience, previous_occupation, race, religious_affiliation, phone_number, email, last_degree_issued, ssn, gender, background_check_data) VALUES
('PhD', 32, 8, 'Research Scientist', 'Asian', 'None', '1234567890', 'john_doe@email.com', 'PhD in Computer Science', 111223333, 'Male', 'Clear'),
('Masters', 28, 5, 'Data Analyst', 'Caucasian', 'Christian', '2345678901', 'jane_doe@email.com', 'MS in Data Science', 112233445, 'Female', 'Clear'),
('Bachelors', 45, 13, 'Professor', 'Caucasian', 'Christian', '4678639083', 'jeff_white@email.com', 'BS in Data Science', 112233446, 'Male', 'Clear'),
('PhD', 37, 12, 'Web Developer', 'African American', 'None', '8735658478', 'rebecca_light@email.com', 'PhD in Computer Science', 112233447, 'Female', 'Clear'),
('Bachelors', 55, 28, 'Data Analyst', 'Caucasian', 'Christian', '0276472908', 'daniel_grip@email.com', 'BS in Data Science', 112233449, 'Female', 'Clear'),
('Masters', 44, 20, 'Professor', 'Asian', 'Christian', '9835482618', 'clip_hamstring@email.com', 'MS in Computer Science', 112233442, 'Male', 'Clear'),
('Bachelors', 32, 6, 'IT', 'Latino', 'None', '6373927643', 'jimi_mudstank@email.com', 'BS in Computer Science', 112233448, 'Male', 'Clear'),
('None', 18, 0, 'Student', 'Caucasian', 'Christian', '9836554345', 'skippy_lip@email.com', 'GED', 112233476, 'Male', 'Clear'),
('Masters', 66, 40, 'Research Scientist', 'None', 'Christian', '8735467321', 'lid_dip@email.com', 'MS in Data Science', 112233782, 'Male', 'Clear'),
('Bachelors', 42, 15, 'Professor', 'Latino', 'Christian', '8735647625', 'stank_towel@email.com', 'BS in Data Science', 112233872, 'Female', 'Clear'),
-- Add more tuples as needed...

-- Populating Departments
INSERT INTO Departments(name, abbreviation, max_faculty_capacity, current_number_of_faculty, academic_division) VALUES
('Computer Science', 'CS', 100, 60, 'Engineering'),
('Biology', 'BIO', 80, 55, 'Science'),
('Mathematics', 'MATH', 90, 45, 'Science'),
('History', 'HIST', 70, 30, 'Humanities'),
('Electrical Engineering', 'EE', 110, 75, 'Engineering'),
('Chemistry', 'CHEM', 85, 50, 'Science'),
('Economics', 'ECON', 75, 40, 'Business'),
('Psychology', 'PSYCH', 60, 35, 'Social Sciences'),
('Mechanical Engineering', 'ME', 95, 70, 'Engineering'),
('English', 'ENG', 80, 45, 'Humanities')  
-- Add more tuples as needed...

-- Populating Jobs
INSERT INTO Jobs(job_id, position_title, department, tenure_track, full_time, part_time, adjunct, hourly, per_hour_wage, salary, listing_date, end_listing_date) VALUES
(1, 'Assistant Professor', 'Computer Science', TRUE, TRUE, FALSE, FALSE, FALSE, NULL, 70000, '2023-01-15', '2023-02-15'),
(2, 'Research Analyst', 'Biology', FALSE, TRUE, FALSE, FALSE, FALSE, NULL, 60000, '2023-01-20', '2023-02-20'),
(3, 'Associate Professor', 'Computer Science', TRUE, TRUE, FALSE, FALSE, FALSE, NULL, 90000, '2023-01-25', '2023-02-25'),
(4, 'Lab Technician', 'Biology', FALSE, TRUE, FALSE, FALSE, FALSE, NULL, 50000, '2023-01-30', '2023-02-28'),
(5, 'Assistant Professor', 'Mathematics', TRUE, TRUE, FALSE, FALSE, FALSE, NULL, 75000, '2023-02-10', '2023-03-10'),
(6, 'History Instructor', 'History', TRUE, TRUE, FALSE, FALSE, FALSE, NULL, 65000, '2023-02-15', '2023-03-15'),
(7, 'Electrical Engineer', 'Electrical Engineering', TRUE, TRUE, FALSE, FALSE, FALSE, NULL, 95000, '2023-02-20', '2023-03-20'),
(8, 'Chemistry Lab Assistant', 'Chemistry', FALSE, TRUE, FALSE, FALSE, FALSE, NULL, 55000, '2023-02-25', '2023-03-25'),
(9, 'Economics Professor', 'Economics', TRUE, TRUE, FALSE, FALSE, FALSE, NULL, 80000, '2023-03-01', '2023-03-31'),
(10, 'Psychology Researcher', 'Psychology', FALSE, TRUE, FALSE, FALSE, FALSE, NULL, 70000, '2023-03-05', '2023-04-05');

-- Add more tuples as needed...

-- Populating Applications
INSERT INTO Applications(application_id, job, position, tenure_track, date, candidate) VALUES
(1, 'Assistant Professor', 'Computer Science', TRUE, '2023-01-20', 'john_doe@email.com'),
(2, 'Research Analyst', 'Biology', FALSE, '2023-01-22', 'jane_doe@email.com'),
(3, 'Associate Professor', 'Computer Science', TRUE, '2023-01-25', 'alice@email.com'),
(4, 'Lab Technician', 'Biology', FALSE, '2023-01-28', 'bob@email.com'),
(5, 'Assistant Professor', 'Mathematics', TRUE, '2023-02-05', 'carol@email.com'),
(6, 'History Instructor', 'History', TRUE, '2023-02-10', 'dave@email.com'),
(7, 'Electrical Engineer', 'Electrical Engineering', TRUE, '2023-02-15', 'emily@email.com'),
(8, 'Chemistry Lab Assistant', 'Chemistry', FALSE, '2023-02-20', 'frank@email.com'),
(9, 'Economics Professor', 'Economics', TRUE, '2023-02-25', 'grace@email.com'),
(10, 'Psychology Researcher', 'Psychology', FALSE, '2023-03-01', 'henry@email.com');

-- Populating Letters
INSERT INTO Letters(letter_id, offer_or_rejection, job, start_date, next_steps, rejection_date, denial_reason) VALUES
(1, 'Offer', 'Assistant Professor', '2023-08-15', 'Please confirm by 2023-03-01', NULL, NULL),
(2, 'Rejection', 'Research Analyst', NULL, NULL, '2023-02-05', 'Position Filled'),
(3, 'Offer', 'Associate Professor', '2023-09-01', 'Please confirm by 2023-03-10', NULL, NULL),
(4, 'Rejection', 'Lab Technician', NULL, NULL, '2023-02-10', 'Candidate not qualified'),
(5, 'Offer', 'Assistant Professor', '2023-09-15', 'Please confirm by 2023-03-20', NULL, NULL),
(6, 'Rejection', 'Research Analyst', NULL, NULL, '2023-02-15', 'Skills mismatch'),
(7, 'Offer', 'History Instructor', '2023-10-01', 'Please confirm by 2023-03-25', NULL, NULL),
(8, 'Rejection', 'Electrical Engineer', NULL, NULL, '2023-02-20', 'Experience not suitable'),
(9, 'Offer', 'Chemistry Lab Assistant', '2023-10-15', 'Please confirm by 2023-04-01', NULL, NULL),
(10, 'Rejection', 'Economics Professor', NULL, NULL, '2023-02-25', 'Position already filled');




-- Add more tuples as needed...

