\timing on
\set ECHO queries
\pset null NULL

CREATE ROLE www_crunchydata_com
WITH
LOGIN
NOCREATEDB
NOCREATEROLE
NOSUPERUSER
NOINHERIT
NOBYPASSRLS
NOREPLICATION
IN ROLE pg_read_server_files, pg_read_all_settings
CONNECTION LIMIT -1
PASSWORD 'www_crunchydata_com'\g

CREATE TABLESPACE www_crunchydata_com_data
OWNER www_crunchydata_com
LOCATION '/var/lib/pgsql/18/www_crunchydata_com_data/'\g

CREATE TABLESPACE www_crunchydata_com_index
OWNER www_crunchydata_com
LOCATION '/var/lib/pgsql/18/www_crunchydata_com_index/'\g

CREATE TABLESPACE www_crunchydata_com_temp
OWNER www_crunchydata_com
LOCATION '/var/lib/pgsql/18/www_crunchydata_com_temp/'\g

CREATE DATABASE www_crunchydata_com
WITH
OWNER = www_crunchydata_com
TABLESPACE = www_crunchydata_com_data
IS_TEMPLATE = false
TEMPLATE = template0
ALLOW_CONNECTIONS = true
ENCODING = 'UTF8'
LOCALE = 'en_US.UTF-8'
CONNECTION LIMIT -1\g

\set ECHO none
\timing off