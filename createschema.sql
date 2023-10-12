CREATE TABLE Candidates (
    degree_level VARCHAR(255),
    age INT,
    years_experience INT,
    previous_occupation VARCHAR(255),
    race VARCHAR(255),
    religious_affiliation VARCHAR(255),
    phone_number INT,
    email VARCHAR(255),
    last_degree_issued VARCHAR(255),
    ssn INT NOT NULL,
    gender VARCHAR(255),
    background_check_data VARCHAR(255),
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
    listing_date VARCHAR(255),
    end_listing_date VARCHAR(255),
    position_title VARCHAR(255),
);

CREATE TABLE Applications_Received (
    application_id INT NOT NULL,
    department VARCHAR(255),
    position VARCHAR(255),
    tenure_track BOOLEAN,
    date DATE,
    person VARCHAR(255),  -- Assuming the 'person' attribute is a VARCHAR for now. You may want to reference the Candidates table if this refers to a specific candidate.
);

CREATE TABLE Offer_Letters (
    offer_id INT NOT NULL,
    job_title VARCHAR(255),
    salary INT,
    start_date DATE,
    next_steps VARCHAR(255),
);

CREATE TABLE Rejection_Letters (
    offer_id INT NOT NULL,
    person VARCHAR(255),
    rejection_date DATE,
    denial_reason VARCHAR(255),
);

CREATE TABLE Departments (
    name VARCHAR(255) NOT NULL,
    abbreviation VARCHAR(255),
    max_faculty_capacity INT,
    current_number_of_faculty INT,
);
