-- =============================================================
-- Project : Enterprise Banking Data Platform
-- Module  : Security
-- Script  : 03_roles.sql
-- Purpose : Create Business Roles
-- =============================================================

USE ROLE ACCOUNTADMIN;

-------------------------------------------------------
-- Developer Role
-------------------------------------------------------

CREATE ROLE IF NOT EXISTS BANKING_DEVELOPER_ROLE
COMMENT='Developers responsible for building pipelines';

-------------------------------------------------------
-- ETL Role
-------------------------------------------------------

CREATE ROLE IF NOT EXISTS BANKING_ETL_ROLE
COMMENT='Role used by automated ETL pipelines';

-------------------------------------------------------
-- Analyst Role
-------------------------------------------------------

CREATE ROLE IF NOT EXISTS BANKING_ANALYST_ROLE
COMMENT='Read-only role for business analysts';