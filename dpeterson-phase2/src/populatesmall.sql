-- populatesmall.sql

-- Populate Candidates
INSERT INTO Candidates (degree_level, age, years_experience, previous_occupation, race, religious_affiliation, phone_number, email_address, last_degree_issued, ssn, gender, background_check_data)
VALUES
('PhD', 32, 8, 'Research Scientist', 'White', 'Christian', 1234567890, 'alice@email.com', 'PhD in Computer Science', 123456789, 'Female', 'Clear'),
('Masters', 28, 4, 'Software Engineer', 'Asian', 'Buddhist', 1234567891, 'bob@email.com', 'MS in Software Engineering', 123456790, 'Male', 'Clear'),
('Bachelors', 24, 2, 'Junior Developer', 'Black', 'Muslim', 1234567892, 'charlie@email.com', 'BS in Computer Science', 123456791, 'Male', 'Clear'),
...;  -- Add more as required

-- Populate Jobs
INSERT INTO Jobs (job_id, position_title, department, tenure, full_time, part_time, adjunct, alumnus, hourly, per_hour_wage, salary, listing_date, end_listing_date, status_of_position, opening)
VALUES
(1, 'Assistant Professor', 'CS', TRUE, TRUE, FALSE, FALSE, FALSE, FALSE, NULL, 80000, '2023-01-01', '2023-02-01', 'Open', TRUE),
(2, 'Adjunct Professor', 'CS', FALSE, FALSE, TRUE, TRUE, FALSE, TRUE, 50, NULL, '2023-01-02', '2023-02-02', 'Open', TRUE),
...;  -- Add more as required

-- Populate Applications_Received
INSERT INTO Applications_Received (application_id, department, position, tenure_track, date, person)
VALUES
(1, 'CS', 'Assistant Professor', TRUE, '2023-01-05', 'alice@email.com'),
(2, 'CS', 'Adjunct Professor', FALSE, '2023-01-06', 'bob@email.com'),
...;  -- Add more as required

-- Populate Offer_Letters
INSERT INTO Offer_Letters (offer_id, job_title, salary, start_date, next_steps)
VALUES
(1, 'Assistant Professor', 80000, '2023-09-01', 'Send acceptance letter by 2023-02-10'),
...;  -- Add more as required

-- Populate Rejection_Letters
INSERT INTO Rejection_Letters (offer_id, person, rejection_date, denial_reason)
VALUES
(2, 'bob@email.com', '2023-01-20', 'Position filled'),
...;  -- Add more as required

-- Populate Departments
INSERT INTO Departments (name, abbreviation, max_faculty_capacity, current_number_of_faculty)
VALUES
('Computer Science', 'CS', 50, 30),
('Mathematics', 'MATH', 40, 20),
...;  -- Add more as required
