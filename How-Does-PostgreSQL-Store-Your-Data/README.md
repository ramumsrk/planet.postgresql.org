# [How Does PostgreSQL Store Your Data?](https://stokerpostgresql.blogspot.com/2025/01/how-does-postgresql-store-your-data.html)

#### paragraph 1

1. _clockworks_

## Step 1

## Step 2

## Step 3

1. _oid_ or _object_ _identifier_
2. instance dependent

## Step 4

```shell
sudo --user postgres --group postgres find /run/media/ramumsrk/ata_1_0_TiB/pgsql/18 -name 61649
[sudo] password for ramumsrk: 
/run/media/ramumsrk/ata_1_0_TiB/pgsql/18/stokerpostgresql_blogspot_com_data/PG_18_202506291/61601/61649
find: Failed to restore initial working directory: /home/ramumsrk: Permission denied
sudo -u postgres -g postgres ls -i -l -h -F -A -a -Z --color=auto /run/media/ramumsrk/ata_1_0_TiB/pgsql/18/stokerpostgresql_blogspot_com_data/PG_18_202506291/61601/61649
5570 -rw-------. 1 postgres postgres system_u:object_r:postgresql_db_t:s0 8.0K Nov 15 10:05 /run/media/ramumsrk/ata_1_0_TiB/pgsql/18/stokerpostgresql_blogspot_com_data/PG_18_202506291/61601/61649
which od
/usr/bin/od
sudo -u postgres -g postgres file -s /run/media/ramumsrk/ata_1_0_TiB/pgsql/18/stokerpostgresql_blogspot_com_data/PG_18_202506291/61601/61649
/run/media/ramumsrk/ata_1_0_TiB/pgsql/18/stokerpostgresql_blogspot_com_data/PG_18_202506291/61601/61649: data
```

## Next Time