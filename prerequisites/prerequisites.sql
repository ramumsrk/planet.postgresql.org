\timing on
\set ECHO queries
\pset null NULL

CREATE ROLE databaserookies_wordpress_com
WITH
LOGIN
NOSUPERUSER
NOCREATEDB
NOBYPASSRLS
NOREPLICATION
NOINHERIT
PASSWORD NULL
VALID UNTIL '2025-12-31 23:59:59+05:30'
IN ROLE pg_read_server_files, pg_read_all_settings
CONNECTION LIMIT -1\g

\dtx+ pg_catalog.pg_authid

\d+ pg_catalog.pg_authid

SELECT * FROM pg_catalog.pg_authid WHERE rolname = 'databaserookies_wordpress_com'\gx

\dtx+ pg_catalog.pg_roles

\d+ pg_catalog.pg_roles

SELECT * FROM pg_catalog.pg_roles WHERE rolname = 'databaserookies_wordpress_com'\gx

CREATE TABLESPACE databaserookies_wordpress_com_data
OWNER databaserookies_wordpress_com
LOCATION '/run/media/ramumsrk/ata_1_0_TiB/pgsql/18/databaserookies_wordpress_com_data/'\g

CREATE TABLESPACE databaserookies_wordpress_com_index
OWNER databaserookies_wordpress_com
LOCATION '/run/media/ramumsrk/ata_1_0_TiB/pgsql/18/databaserookies_wordpress_com_index/'\g

CREATE TABLESPACE databaserookies_wordpress_com_temp
OWNER databaserookies_wordpress_com
LOCATION '/run/media/ramumsrk/ata_1_0_TiB/pgsql/18/databaserookies_wordpress_com_temp/'\g

\dtx+ pg_catalog._pg_tablespace

\d+ pg_catalog.pg_tablespace

SELECT * FROM pg_catalog.pg_tablespace WHERE spcname LIKE 'databaserookies_wordpress_com_%'\gx

CREATE DATABASE databaserookies_wordpress_com
WITH
OWNER = databaserookies_wordpress_com
TABLESPACE = databaserookies_wordpress_com_data
IS_TEMPLATE = false
ALLOW_CONNECTIONS = true
TEMPLATE = template0
ENCODING = 'UTF8'
LOCALE = 'en_US.UTF-8'
CONNECTION LIMIT -1\g

\dtx+ pg_catalog.pg_database

\d+ pg_catalog.pg_database

SELECT * FROM pg_catalog.pg_database WHERE datname = 'databaserookies_wordpress_com'\gx

\connect databaserookies_wordpress_com

CREATE SCHEMA IF NOT EXISTS databaserookies_wordpress_com AUTHORIZATION databaserookies_wordpress_com\g

CREATE SCHEMA IF NOT EXISTS Deepak_Mahto AUTHORIZATION databaserookies_wordpress_com\g