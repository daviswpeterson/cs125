BIG PAPA GROUP README FILE PHASE 2 

My team includes: Davis, Darian, Daniel, Connor, Luke, and Laurel

Authors: Connor Rogstead, Daniel Patterson, Luke Rozinskas, Laurel Payne, Darian Choi, Davis Peterson 

PHASE 2 FILES: 

createsqlschema.sql file info:  This SQL file contains commands to create the initial database schema. It defines the structure of the database by creating tables, specifying attributes, and their data types. 

dropschema.sql file info: This SQL file is used to remove all the database objects created by createschema.sql. It undoes the work done by the createschema.sql file and is essential for resetting the database to its initial state or cleaning up after testing and development.

populatesmall.sql file info: This SQL file is responsible for inserting a small amount of realistic data into each of the defined database tables. The data in these tuples may be entirely fictional but should resemble the kind of data that your database will handle. This file is often used for initial testing and ensuring that the database functions as expected.

populatelarge.sql file info: This SQL file generates a substantial amount of data for your database and loads it into the appropriate tables. It typically uses efficient methods like the COPY command in PostgreSQL or its equivalent in MySQL to insert large datasets. The purpose is to simulate a larger dataset for performance testing, scalability assessment, or stress testing.

Collaboration effort: How the work was distributed and the primary workers on each piece of the project.

- Connor edited and updated the E/R diagram, relations, and docx file
- Laurel and Luke worked on the two populating SQL files and how to implement them 
- Daniel and Darian worked on brainstorming ideas on how to implement the Drop and Create schema files while Laurel and Luke assisted with helping write the actual code
- Davis helped organize and review the files and figure out how to submit the files properly
- Darian wrote and edited this README file
