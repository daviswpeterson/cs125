CREATE TABLE Candidates (
    degree_level VARCHAR(255),
    age INT,
    years_experience INT,
    previous_occupation VARCHAR(255),
    race VARCHAR(255),
    religious_affiliation VARCHAR(255),
    phone_number BIGINT,
    email VARCHAR(255),
    last_degree_issued VARCHAR(255),
    ssn BIGINT NOT NULL,
    gender VARCHAR(255),
    background_check_data VARCHAR(255),
    PRIMARY KEY (ssn),
    CHECK (age>=18)
);

CREATE TABLE Jobs (
    job_id INT NOT NULL,
    position_title VARCHAR(255),
    department VARCHAR(255),
    tenure_track BOOLEAN,
    full_time BOOLEAN,
    part_time BOOLEAN,
    adjunct BOOLEAN,
    hourly BOOLEAN,
    per_hour_wage FLOAT,
    salary INT,
    listing_date DATETIME,
    end_listing_date DATETIME,
    openings INT,
    PRIMARY KEY (job_id)
);

CREATE TABLE Applications (
    application_id INT NOT NULL,
    job VARCHAR(255),
    job_id INT NOT NULL,
    position VARCHAR(255),
    tenure_track BOOLEAN,
    date DATETIME,
    candidate VARCHAR(255),
    PRIMARY KEY (application_id),
    FOREIGN KEY (job_id) REFERENCES Jobs(job_id)
);

CREATE TABLE Letters (
    letter_id INT NOT NULL,
    offer_or_rejection VARCHAR(255),
    job VARCHAR(255),
    start_date DATETIME,
    next_steps VARCHAR(255),
    rejection_date DATETIME,
    denial_reason VARCHAR(255),
    PRIMARY KEY (letter_id)
);

CREATE TABLE Departments (
    name VARCHAR(255) NOT NULL,
    abbreviation VARCHAR(255),
    max_faculty_capacity INT,
    current_number_of_faculty INT,
    academic_division VARCHAR(255),
    PRIMARY KEY (name),
    CONSTRAINT not_overfilled CHECK (current_number_of_faculty <= max_faculty_capacity)
);
