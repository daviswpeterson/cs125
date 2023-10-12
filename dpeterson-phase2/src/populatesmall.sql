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
-- Add more tuples as needed...

-- Populating Jobs
INSERT INTO Jobs(job_id, position_title, department, tenure_track, full_time, part_time, adjunct, hourly, per_hour_wage, salary, listing_date, end_listing_date) VALUES
(1, 'Assistant Professor', 'Computer Science', TRUE, TRUE, FALSE, FALSE, FALSE, NULL, 70000, '2023-01-15', '2023-02-15'),
(2, 'Research Analyst', 'Biology', FALSE, TRUE, FALSE, FALSE, FALSE, NULL, 60000, '2023-01-20', '2023-02-20'),
-- Add more tuples as needed...

-- Populating Applications
INSERT INTO Applications(application_id, job, position, tenure_track, date, candidate) VALUES
(1, 'Assistant Professor', 'Computer Science', TRUE, '2023-01-20', 'john_doe@email.com'),
(2, 'Research Analyst', 'Biology', FALSE, '2023-01-22', 'jane_doe@email.com'),
-- Add more tuples as needed...

-- Populating Letters
INSERT INTO Letters(letter_id, offer_or_rejection, job, start_date, next_steps, rejection_date, denial_reason) VALUES
(1, 'Offer', 'Assistant Professor', '2023-08-15', 'Please confirm by 2023-03-01', NULL, NULL),
(2, 'Rejection', 'Research Analyst', NULL, NULL, '2023-02-05', 'Position Filled'),
-- Add more tuples as needed...

