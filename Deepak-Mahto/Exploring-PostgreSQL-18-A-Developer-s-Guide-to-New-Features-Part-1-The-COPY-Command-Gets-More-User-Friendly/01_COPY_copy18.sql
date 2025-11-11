COPY Deepak_Mahto.copy18
(
    first_column,
    second_column,
    third_column,
    fourth_column,
    fifth_column,
    sixth_column,
    seventh_column
)
FROM '/run/media/ramumsrk/ata_1_0_TiB/pgsql/18/databaserookies_wordpress_com/copy18_data.csv'
WITH
(
    FORMAT csv,
    ENCODING 'UTF8',
    ON_ERROR ignore,
    LOG_VERBOSITY verbose
)\g