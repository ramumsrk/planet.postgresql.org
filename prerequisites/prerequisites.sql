\timing on
\set ECHO all
\pset null NULL
\set SINGLESTEP on

\conninfo

SELECT CURRENT_DATABASE(), USER, CURRENT_USER, SESSION_USER, CURRENT_ROLE, CURRENT_SCHEMA, CURRENT_DATE, CURRENT_TIME, CURRENT_TIMESTAMP\gx

-- \dtx+ pg_catalog.pg_authid

-- \d+ pg_catalog.pg_authid

-- SELECT * FROM pg_catalog.pg_authid WHERE rolname = 'www_data_bene_io'\g

-- \dvx+ pg_catalog.roles

-- \d+ pg_catalog.pg_authid

-- SELECT * FROM pg_catalog.pg_roles WHERE rolname = 'www_data_bene_io'\g

-- CREATE ROLE www_data_bene_io
-- WITH
-- LOGIN
-- NOSUPERUSER
-- NOCREATEDB
-- NOINHERIT
-- NOREPLICATION
-- NOBYPASSRLS
-- PASSWORD NULL
-- IN ROLE pg_read_server_files, pg_read_all_settings, pg_read_all_stats
-- VALID UNTIL '2025-12-31 23:59:59+05:30'
-- CONNECTION LIMIT -1\g

-- SELECT * FROM pg_catalog.pg_authid WHERE rolname = 'www_data_bene_io'\gx

-- SELECT * FROM pg_catalog.pg_roles WHERE rolname = 'www_data_bene_io'\gx

\dtx+ pg_catalog.pg_tablespace

\d+ pg_catalog.pg_tablespace

SELECT * FROM pg_catalog.pg_tablespace WHERE spcname LIKE 'www_data_bene_io_%'\gx

CREATE TABLESPACE www_data_bene_io_data
OWNER www_data_bene_io
LOCATION '/run/media/ramumsrk/ata_1_0_TiB/pgsql/18/www_data_bene_io_data/'\g

CREATE TABLESPACE www_data_bene_io_index
OWNER www_data_bene_io
LOCATION '/run/media/ramumsrk/ata_1_0_TiB/pgsql/18/www_data_bene_io_index/'\g

CREATE TABLESPACE www_data_bene_io_temp
OWNER www_data_bene_io
LOCATION '/run/media/ramumsrk/ata_1_0_TiB/pgsql/18/www_data_bene_io_temp/'\g

SELECT * FROM pg_catalog.pg_tablespace WHERE spcname LIKE 'www_data_bene_io_%'\gx

\lx+

\listx+

\dtx+ pg_catalog.pg_database

\d+ pg_catalog.pg_database

SELECT * FROM pg_catalog.pg_database WHERE datname = 'www_data_bene_io'\g

CREATE DATABASE www_data_bene_io
WITH
OWNER = www_data_bene_io
TABLESPACE = www_data_bene_io_data
IS_TEMPLATE = false
TEMPLATE = template0
LOCALE = 'en_US.UTF-8'
ENCODING = UTF8
LOCALE_PROVIDER = libc
LC_COLLATE = 'en_US.UTF-8'
LC_CTYPE = 'en_US.UTF-8'
COLLATION_VERSION = '2.42'
ALLOW_CONNECTIONS = true
CONNECTION LIMIT -1\g

SELECT * FROM pg_catalog.pg_database WHERE datname = 'www_data_bene_io'\gx

\connect www_data_bene_io

\conninfo

SELECT CURRENT_DATABASE(), USER, CURRENT_USER, SESSION_USER, CURRENT_ROLE, CURRENT_SCHEMA, CURRENT_DATE, CURRENT_TIME, CURRENT_TIMESTAMP\gx

\dnx+

CREATE SCHEMA IF NOT EXISTS www_data_bene_io AUTHORIZATION www_data_bene_io\g

CREATE SCHEMA IF NOT EXISTS frédéric_delacourt AUTHORIZATION www_data_bene_io\g

\dxx+

CREATE EXTENSION IF NOT EXISTS pg_stat_statements
WITH
SCHEMA www_data_bene_io
VERSION '1.12'
CASCADE\g

\dxx+

\dnx+