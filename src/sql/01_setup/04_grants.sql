-- =============================================================
-- Project : Enterprise Banking Data Platform
-- Script  : 04_grants.sql
-- Purpose : Grant privileges to roles
-- =============================================================

USE ROLE ACCOUNTADMIN;

-------------------------------------------------------
-- Developer Role
-------------------------------------------------------

GRANT USAGE
ON WAREHOUSE BANKING_WH
TO ROLE BANKING_DEVELOPER_ROLE;

GRANT USAGE
ON DATABASE BANKING_DEV
TO ROLE BANKING_DEVELOPER_ROLE;

-------------------------------------------------------
-- Grant schema permissions
-------------------------------------------------------

GRANT USAGE
ON ALL SCHEMAS
IN DATABASE BANKING_DEV
TO ROLE BANKING_DEVELOPER_ROLE;

-------------------------------------------------------
-- Developer can create objects
-------------------------------------------------------

GRANT CREATE TABLE
ON ALL SCHEMAS
IN DATABASE BANKING_DEV
TO ROLE BANKING_DEVELOPER_ROLE;

GRANT CREATE VIEW
ON ALL SCHEMAS
IN DATABASE BANKING_DEV
TO ROLE BANKING_DEVELOPER_ROLE;

GRANT CREATE STAGE
ON ALL SCHEMAS
IN DATABASE BANKING_DEV
TO ROLE BANKING_DEVELOPER_ROLE;

GRANT CREATE FILE FORMAT
ON ALL SCHEMAS
IN DATABASE BANKING_DEV
TO ROLE BANKING_DEVELOPER_ROLE;

GRANT CREATE PROCEDURE
ON ALL SCHEMAS
IN DATABASE BANKING_DEV
TO ROLE BANKING_DEVELOPER_ROLE;

GRANT CREATE FUNCTION
ON ALL SCHEMAS
IN DATABASE BANKING_DEV
TO ROLE BANKING_DEVELOPER_ROLE;