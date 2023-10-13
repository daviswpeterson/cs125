-- For MariaDB (MySQL)
LOAD DATA INFILE 'https://github.com/daviswpeterson/cs125/blob/main/dpeterson-phase2/src/candidates.csv'
INTO TABLE Candidates
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

LOAD DATA INFILE 'https://github.com/daviswpeterson/cs125/blob/main/dpeterson-phase2/src/applications.csv'
INTO TABLE Applications
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

LOAD DATA INFILE 'https://github.com/daviswpeterson/cs125/blob/main/dpeterson-phase2/src/departments.csv'
INTO TABLE Departments
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

LOAD DATA INFILE 'https://github.com/daviswpeterson/cs125/blob/main/dpeterson-phase2/src/jobs.csv'
INTO TABLE Jobs
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

LOAD DATA INFILE 'https://github.com/daviswpeterson/cs125/blob/main/dpeterson-phase2/src/letters.csv'
INTO TABLE Letters
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;
