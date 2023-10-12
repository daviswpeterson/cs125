-- For PostgreSQL
COPY Candidates FROM '/Users/laurelpayne/Desktop/Gen/candidates.csv' DELIMITER ',' CSV HEADER;
COPY Applications FROM '/Users/laurelpayne/Desktop/Gen/applications.csv' DELIMITER ',' CSV HEADER;
COPY Departments FROM '/Users/laurelpayne/Desktop/Gen/departments.csv' DELIMITER ',' CSV HEADER;
COPY Jobs FROM '/Users/laurelpayne/Desktop/Gen/jobs.csv' DELIMITER ',' CSV HEADER;
COPY Letters FROM '/Users/laurelpayne/Desktop/Gen/letters.csv' DELIMITER ',' CSV HEADER;
