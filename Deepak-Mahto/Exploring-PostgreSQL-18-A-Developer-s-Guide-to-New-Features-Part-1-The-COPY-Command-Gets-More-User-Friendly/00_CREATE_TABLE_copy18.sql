CREATE TABLE IF NOT EXISTS Deepak_Mahto.copy18
(
    first_column INT4,
    second_column TEXT DEFAULT 'x'::text,
    third_column TEXT CONSTRAINT nn_copy18_third_column NOT NULL,
    fourth_column TEXT,
    fifth_column BOOLEAN,
    sixth_column DATE,
    seventh_column TIMESTAMP WITHOUT TIME ZONE,
    -- Table constraint
    CONSTRAINT chk_copy18_fourth_column CHECK (LENGTH(fourth_column) > 2)
)
TABLESPACE databaserookies_wordpress_com_data\g