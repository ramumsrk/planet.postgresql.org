# [Exploring PostgreSQL 18: A Developer’s Guide to New Features – Part 1: The COPY Command Gets More User-Friendly](https://databaserookies.wordpress.com/2025/09/28/postgres-18-copy-command/)

#### paragraph 1

#### paragraph 2

## PostgreSQL 18 – Enhancements with the ````COPY```` Command

#### paragraph 1

1. [COPY](https://www.postgresql.org/docs/18/sql-copy.html)
2. flat files - csv, text

#### paragraph 2

1. incompatibilities

## PostgreSQL 18 – New ````REJECT_LIMIT```` option

## Controlling Data Quality During Loads with Reject Limits in PostgreSQL 18

```sql
databaserookies_wordpress_com=# \i /run/media/ramumsrk/v220w_4.1GiB/repositories/planet.postgresql.org/Deepak-Mahto/Exploring-PostgreSQL-18-A-Developer-s-Guide-to-New-Features-Part-1-The-COPY-Command-Gets-More-User-Friendly/01_COPY_copy18.sql
psql:/run/media/ramumsrk/v220w_4.1GiB/repositories/planet.postgresql.org/Deepak-Mahto/Exploring-PostgreSQL-18-A-Developer-s-Guide-to-New-Features-Part-1-The-COPY-Command-Gets-More-User-Friendly/01_COPY_copy18.sql:18: NOTICE:  skipping row due to data type incompatibility at line 4 for column "seventh_column": "2024-01-01 12:00:61"
psql:/run/media/ramumsrk/v220w_4.1GiB/repositories/planet.postgresql.org/Deepak-Mahto/Exploring-PostgreSQL-18-A-Developer-s-Guide-to-New-Features-Part-1-The-COPY-Command-Gets-More-User-Friendly/01_COPY_copy18.sql:18: NOTICE:  skipping row due to data type incompatibility at line 5 for column "first_column": "a"
psql:/run/media/ramumsrk/v220w_4.1GiB/repositories/planet.postgresql.org/Deepak-Mahto/Exploring-PostgreSQL-18-A-Developer-s-Guide-to-New-Features-Part-1-The-COPY-Command-Gets-More-User-Friendly/01_COPY_copy18.sql:18: NOTICE:  skipping row due to data type incompatibility at line 6 for column "first_column": "999999999999999999999999"
psql:/run/media/ramumsrk/v220w_4.1GiB/repositories/planet.postgresql.org/Deepak-Mahto/Exploring-PostgreSQL-18-A-Developer-s-Guide-to-New-Features-Part-1-The-COPY-Command-Gets-More-User-Friendly/01_COPY_copy18.sql:18: NOTICE:  skipping row due to data type incompatibility at line 7 for column "fifth_column": "adhoc"
psql:/run/media/ramumsrk/v220w_4.1GiB/repositories/planet.postgresql.org/Deepak-Mahto/Exploring-PostgreSQL-18-A-Developer-s-Guide-to-New-Features-Part-1-The-COPY-Command-Gets-More-User-Friendly/01_COPY_copy18.sql:18: NOTICE:  skipping row due to data type incompatibility at line 8 for column "sixth_column": "20241301"
psql:/run/media/ramumsrk/v220w_4.1GiB/repositories/planet.postgresql.org/Deepak-Mahto/Exploring-PostgreSQL-18-A-Developer-s-Guide-to-New-Features-Part-1-The-COPY-Command-Gets-More-User-Friendly/01_COPY_copy18.sql:18: NOTICE:  5 rows were skipped due to data type incompatibility
COPY 3
databaserookies_wordpress_com=# 
```

## Additional ````LOG_VERBOSITY```` silent option

## Conclusion