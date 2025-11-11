\timing on
\set ECHO queries
\pset null NULL

\copy Deepak_Mahto.number_names FROM '/run/media/ramumsrk/ata_1_0_TiB/pgsql/18/databaserookies_wordpress_com/number_names.csv' WITH (FORMAT csv, ENCODING utf8, ON_ERROR ignore, LOG_VERBOSITY verbose);

\set ECHO none
\timing off