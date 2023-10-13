-- For MariaDB (MySQL)
LOAD DATA INFILE '/Desktop/cs125/crogstad-phase2/candidates.csv'
INTO TABLE Candidates
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

LOAD DATA INFILE '/Desktop/cs125/crogstad-phase2/applications.csv'
INTO TABLE Applications
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

LOAD DATA INFILE '/Desktop/cs125/crogstad-phase2/departments.csv'
INTO TABLE Departments
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

LOAD DATA INFILE '/Desktop/cs125/crogstad-phase2/jobs.csv'
INTO TABLE Jobs
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

LOAD DATA INFILE '/Desktop/cs125/crogstad-phase2/letters.csv'
INTO TABLE Letters
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;
