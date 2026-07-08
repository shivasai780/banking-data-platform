-- =============================================================
-- Project : Enterprise Banking Data Platform
-- Module  : Environment Setup
-- Script  : 01_create_database.sql
-- Author  : Shiva Sai
-- =============================================================

CREATE DATABASE IF NOT EXISTS BANKING_DEV
COMMENT = 'Development environment for Enterprise Banking Data Platform';

USE DATABASE BANKING_DEV;

------------------------------------------------------------
-- Medallion Schemas
------------------------------------------------------------

CREATE SCHEMA IF NOT EXISTS RAW;
CREATE SCHEMA IF NOT EXISTS BRONZE;
CREATE SCHEMA IF NOT EXISTS SILVER;
CREATE SCHEMA IF NOT EXISTS GOLD;
CREATE SCHEMA IF NOT EXISTS MARTS;

------------------------------------------------------------
-- Supporting Schemas
------------------------------------------------------------

CREATE SCHEMA IF NOT EXISTS MONITORING;
CREATE SCHEMA IF NOT EXISTS SECURITY;
CREATE SCHEMA IF NOT EXISTS UTILS;
CREATE SCHEMA IF NOT EXISTS DEV_TOOLS;