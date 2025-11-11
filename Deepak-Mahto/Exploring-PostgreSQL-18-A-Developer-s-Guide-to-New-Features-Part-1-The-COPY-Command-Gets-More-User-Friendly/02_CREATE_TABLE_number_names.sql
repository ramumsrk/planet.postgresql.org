CREATE TABLE IF NOT EXISTS Deepak_Mahto.number_names
(
    number SMALLINT CONSTRAINT nn_number_names_number NOT NULL DEFAULT 0::SMALLINT,
    name TEXT CONSTRAINT nn_number_names_name NOT NULL DEFAULT 'zero'::text
)
TABLESPACE databaserookies_wordpress_com_data\g