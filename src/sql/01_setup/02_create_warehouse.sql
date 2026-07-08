-- =============================================================
-- Project : Enterprise Banking Data Platform
-- Module  : Environment Setup
-- Script  : 02_create_warehouse.sql
-- Purpose : Create Development Warehouse
-- =============================================================

USE ROLE ACCOUNTADMIN;

CREATE WAREHOUSE IF NOT EXISTS BANKING_WH
WITH
    WAREHOUSE_SIZE = 'XSMALL'
    WAREHOUSE_TYPE = 'STANDARD'
    AUTO_SUSPEND = 60
    AUTO_RESUME = TRUE
    INITIALLY_SUSPENDED = TRUE
COMMENT = 'Development warehouse for Enterprise Banking Platform';