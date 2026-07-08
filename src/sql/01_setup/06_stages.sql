-- ==========================================================
-- Project : Enterprise Banking Data Platform
-- Script  : 06_stages.sql
-- Purpose : Create Internal Stages
-- ==========================================================

USE ROLE ACCOUNTADMIN;

USE DATABASE BANKING_DEV;

USE SCHEMA RAW;

------------------------------------------------------------
-- Core Banking
------------------------------------------------------------

CREATE STAGE IF NOT EXISTS CORE_BANKING_STAGE
FILE_FORMAT = CSV_FORMAT
COMMENT='Landing area for Core Banking files';

------------------------------------------------------------
-- CRM
------------------------------------------------------------

CREATE STAGE IF NOT EXISTS CRM_STAGE
FILE_FORMAT = JSON_FORMAT
COMMENT='Landing area for CRM JSON files';

------------------------------------------------------------
-- ERP
------------------------------------------------------------

CREATE STAGE IF NOT EXISTS ERP_STAGE
FILE_FORMAT = CSV_FORMAT
COMMENT='Landing area for ERP files';

------------------------------------------------------------
-- HR
------------------------------------------------------------

CREATE STAGE IF NOT EXISTS HR_STAGE
FILE_FORMAT = CSV_FORMAT
COMMENT='Landing area for HR files';

------------------------------------------------------------
-- External APIs
------------------------------------------------------------

CREATE STAGE IF NOT EXISTS API_STAGE
FILE_FORMAT = JSON_FORMAT
COMMENT='Landing area for API responses';

------------------------------------------------------------
-- Historical Archive
------------------------------------------------------------

CREATE STAGE IF NOT EXISTS ARCHIVE_STAGE
FILE_FORMAT = PARQUET_FORMAT
COMMENT='Landing area for archived historical data';