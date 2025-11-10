\timing on
\set ECHO queries
\pset null NULL

CREATE ROLE www_cybertec_postgresql_com
WITH
LOGIN
NOINHERIT
NOSUPERUSER
NOCREATEDB
NOREPLICATION
NOBYPASSRLS
IN ROLE pg_read_all_settings, pg_read_server_files
PASSWORD 'www_cybertec_postgresql_com'
CONNECTION LIMIT -1\g

SELECT * FROM pg_catalog.pg_authid WHERE rolname = 'www_cybertec_postgresql_com'\gx

SELECT * FROM pg_catalog.pg_roles WHERE rolname = 'www_cybertec_postgresql_com'\gx

CREATE TABLESPACE www_cybertec_postgresql_com_data
OWNER www_cybertec_postgresql_com
LOCATION '/var/lib/pgsql/18/www_cybertec_postgresql_com_data/'\g

CREATE TABLESPACE www_cybertec_postgresql_com_index
OWNER www_cybertec_postgresql_com
LOCATION '/var/lib/pgsql/18/www_cybertec_postgresql_com_index/'\g

CREATE TABLESPACE www_cybertec_postgresql_com_temp
OWNER www_cybertec_postgresql_com
LOCATION '/var/lib/pgsql/18/www_cybertec_postgresql_com_temp/'\g

SELECT * FROM pg_catalog.pg_tablespace WHERE spcname LIKE 'www_cybertec_postgresql_com_%'\gx

CREATE DATABASE www_cybertec_postgresql_com
WITH
OWNER = www_cybertec_postgresql_com
TABLESPACE = www_cybertec_postgresql_com_data
IS_TEMPLATE = false
ALLOW_CONNECTIONS = true
LOCALE = 'en_US.UTF-8'
ENCODING = 'UTF8'
TEMPLATE = template0
CONNECTION LIMIT -1\g

SELECT * FROM pg_catalog.pg_database WHERE datname = 'www_cybertec_postgresql_com'\gx

\connect www_cybertec_postgresql_com

CREATE SCHEMA IF NOT EXISTS www_cybertec_postgresql_com AUTHORIZATION www_cybertec_postgresql_com\g

SELECT * FROM information_schema.tables WHERE table_schema = 'www_cybertec_postgresql_com'\gx