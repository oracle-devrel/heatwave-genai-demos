-- Copyright (c) 2024, Oracle and/or its affiliates.
-- Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl/

SELECT "-- Installation: STARTED ---" AS "";

SELECT "-- Dropping database if exists ---" AS "";

DROP DATABASE IF EXISTS ecommerce;

SELECT "-- Creating tables ---" AS "";

source data/create_tables.sql

SELECT "-- Populating data ---" AS "";

source data/create_data.sql

SELECT "-- Creating stored procedures ---" AS "";

source src/procedures.sql

SELECT "-- Installation: DONE ---" AS "";

