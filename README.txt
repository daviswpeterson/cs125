BIG PAPA GROUP README FILE

My team includes: Davis, Darian, Daniel, Connor, Luke, and Laurel

Authors: Connor Rogstead, Daniel Patterson, Luke Rozinskas, Laurel Payne, Darian Choi, Davis Peterson 

PHASE 2 FILES: 

Createsqlschema.sql file info:  This SQL file contains commands to create the initial database schema. It defines the structure of the database by creating tables, specifying attributes, and their data types. 

Dropschema.sql file info: This SQL file is used to remove all the database objects created by createschema.sql. It undoes the work done by the createschema.sql file and is essential for resetting the database to its initial state or cleaning up after testing and development.

populatesmall.sql file info: This SQL file is responsible for inserting a small amount of realistic data into each of the defined database tables. The data in these tuples may be entirely fictional but should resemble the kind of data that your database will handle. This file is often used for initial testing and ensuring that the database functions as expected.

populatelarge.sql file info: This SQL file generates a substantial amount of data for your database and loads it into the appropriate tables. It typically uses efficient methods like the COPY command in PostgreSQL or its equivalent in MySQL to insert large datasets. The purpose is to simulate a larger dataset for performance testing, scalability assessment, or stress testing.
