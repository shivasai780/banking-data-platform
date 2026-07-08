-- =============================================================
-- Project : Enterprise Banking Data Platform
-- Module  : Environment Setup
-- Script  : 05_file_formats.sql
-- Purpose : Create reusable file formats
-- =============================================================

USE ROLE ACCOUNTADMIN;
USE DATABASE BANKING_DEV;

----------------------------------------------------------
-- CSV File Format
----------------------------------------------------------

CREATE OR REPLACE FILE FORMAT CSV_FORMAT
TYPE = CSV
FIELD_DELIMITER = ','
SKIP_HEADER = 1
FIELD_OPTIONALLY_ENCLOSED_BY = '"'
NULL_IF = ('NULL', '')
EMPTY_FIELD_AS_NULL = TRUE
TRIM_SPACE = TRUE;

----------------------------------------------------------
-- JSON File Format
----------------------------------------------------------

CREATE OR REPLACE FILE FORMAT JSON_FORMAT
TYPE = JSON
STRIP_OUTER_ARRAY = TRUE;

----------------------------------------------------------
-- PARQUET File Format
----------------------------------------------------------

CREATE OR REPLACE FILE FORMAT PARQUET_FORMAT
TYPE = PARQUET;