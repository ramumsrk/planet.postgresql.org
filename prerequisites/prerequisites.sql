\timing on
\set ECHO all
\set SINGLESTEP on
\pset null NULL

-- CREATE ROLE boring_sql
-- WITH
-- LOGIN
-- NOINHERIT
-- NOCREATEDB
-- NOSUPERUSER
-- NOREPLICATION
-- NOBYPASSRLS
-- IN ROLE pg_read_server_files, pg_read_all_settings, pg_read_all_stats
-- PASSWORD NULL
-- VALID UNTIL '2025-12-31 23:59:59+05:30'
-- CONNECTION LIMIT -1\g

-- ALTER ROLE boring_sql RENAME TO boringsql_com\g

CREATE TABLESPACE boringsql_com_data
OWNER boringsql_com
LOCATION '/run/media/ramumsrk/ata_1_0_TiB/pgsql/18/boringsql_com_data/'\g

CREATE TABLESPACE boringsql_com_index
OWNER boringsql_com
LOCATION '/run/media/ramumsrk/ata_1_0_TiB/pgsql/18/boringsql_com_index/'\g

CREATE TABLESPACE boringsql_com_temp
OWNER boringsql_com
LOCATION '/run/media/ramumsrk/ata_1_0_TiB/pgsql/18/boringsql_com_temp/'\g

CREATE DATABASE boringsql_com
WITH
OWNER = boringsql_com
TABLESPACE = boringsql_com_data
ENCODING = UTF8
LOCALE = 'en_US.UTF-8'
IS_TEMPLATE = false
ALLOW_CONNECTIONS = true
TEMPLATE = template0
LOCALE_PROVIDER = libc
COLLATION_VERSION = '2.42'
LC_CTYPE = 'en_US.UTF-8'
LC_COLLATE = 'en_US.UTF-8'
CONNECTION LIMIT = -1\g

\connect boringsql_com

CREATE SCHEMA IF NOT EXISTS boringsql_com ATHORIZATION boringsql_com\g

CREATE SCHEMA IF NOT EXISTS radim_marek AUTHORIZATION boringsql_com\g

CREATE EXTENSION IF NOT EXISTS pg_stat_statements
WITH
SCHEMA radim_marek
VERSION '1.12'
CASCADE\g