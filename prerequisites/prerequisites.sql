\timing on
\set ECHO queries
\pset null NULL

CREATE ROLE pgpedia_info
WITH
LOGIN
NOCREATEDB
NOSUPERUSER
NOCREATEROLE
NOREPLICATION
NOBYPASSRLS
IN ROLE pg_read_server_files, pg_read_all_settings
PASSWORD 'pgpedia_info'
CONNECTION LIMIT -1\g

SELECT * FROM pg_catalog.pg_roles WHERE rolname = 'pgpedia_info'\gx

SELECT * FROM pg_catalog.pg_authid WHERE rolname = 'pgpedia_info'\gx

CREATE TABLESPACE pgpedia_info_data
OWNER pgpedia_info
LOCATION '/var/lib/pgsql/18/pgpedia_info_data'\g

CREATE TABLESPACE pgpedia_info_index
OWNER pgpedia_info
LOCATION '/var/lib/pgsql/18/pgpedia_info_index'\g

CREATE TABLESPACE pgpedia_info_temp
OWNER pgpedia_info
LOCATION '/var/lib/pgsql/18/pgpedia_info_temp'\g

SELECT * FROM pg_catalog.pg_tablespace WHERE spcname LIKE 'pgpedia_info_%'\gx

CREATE DATABASE pgpedia_info
WITH
OWNER = pgpedia_info
TABLESPACE = pgpedia_info_data
IS_TEMPLATE = false
ALLOW_CONNECTIONS = true
CONNECTION LIMIT -1
LOCALE = 'en_US.UTF-8'
ENCODING = 'UTF8'
TEMPLATE = template0\g

SELECT * FROM pg_catalog.pg_database WHERE datname = 'pgpedia_info'\gx

\connect pgpedia_info

SELECT USER, CURRENT_USER, SESSION_USER, CURRENT_ROLE, CURRENT_SCHEMA, CURRENT_DATE, CURRENT_TIME, CURRENT_TIMESTAMP\gx

CREATE SCHEMA IF NOT EXISTS pgpedia_info AUTHORIZATION pgpedia_info\g

SELECT * FROM information_schema.tables WHERE table_schema = 'pgpedia_info'\gdesc

SELECT * FROM information_schema.tables WHERE table_schema = 'pgpedia_info'\gx