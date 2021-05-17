/*
*   @authors Alvin Alagos Eli ,De Andre Powell Mckain, , Alexandra Vovc
*   @since 2021-05-17
*   @version 1.0
*
*   Team Project
*   -This is the main schema where all files will be executed.
*/

--Shows where the scripts are located
show sqlpath

--Drop tables and sequences created
@Drop_schema.sql

--Creates the tables
@Create_schema.sql

--Populates the tables
@Populate_schema.sql

--Craetes a procedure retrieving info.
@Procedures.sql

--Creates a function retrieving info
@Functions.sql

--Creates a trigger
@triggers.sql

--Tests all pl/sql blocks created in previous scripts
@pl_sql_tests.sql

--Creates DB Views
@create_views.sql

--Tests views created
@tests_views.sql



