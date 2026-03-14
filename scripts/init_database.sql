/*
=============================================================
Create Database and Schemas
=============================================================
Script Purpose:
    This script creates a new database named 'datawarehouse'
    after checking if it already exists.

    If the database exists, it is dropped and recreated.
    Then three schemas are created:
        - bronze
        - silver
        - gold

WARNING:
    Running this script will drop the entire 'datawarehouse'
    database if it exists. All data will be permanently deleted.
=============================================================
*/

-- Connect to default admin database
\connect postgres

-- Drop database if it exists
DROP DATABASE IF EXISTS datawarehouse;

-- Create the database
CREATE DATABASE datawarehouse;

-- Connect to the new database
\connect datawarehouse

-- Create schemas
CREATE SCHEMA bronze;
CREATE SCHEMA silver;
CREATE SCHEMA gold;
