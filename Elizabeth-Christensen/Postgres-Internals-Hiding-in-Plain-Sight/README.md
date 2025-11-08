# [Postgres Internals Hiding in Plain Sight](https://www.crunchydata.com/blog/postgres-internals-hiding-in-plain-sight)

## Introduction

#### paragraph 1

#### paragraph 2

#### paragraph 3

## psql’s catalog information

1. [psql commands](https://www.crunchydata.com/developers/playground/psql-basics)

## Important Postgres catalog views

#### paragraph 1

### ````pg_stat_activity````

### ````pg_stat_statements````

### ````pg_stat_database````

### ````pg_locks````

#### paragraph 1

* [how to find the source of the lock in Postgres](https://www.crunchydata.com/blog/one-pid-to-lock-them-all-finding-the-source-of-the-lock-in-postgres)

### ````pg_stat_user_tables````

### ````pg_stat_user_indexes````

1. unused
2. underutilized

### ````pg_settings````

### ````pg_roles````

### ````pg_database````

## Postgres catalog tables

### ````pg_stats````

1. [pg_stats more information can make your queries faster](https://www.crunchydata.com/blog/hacking-the-postgres-statistics-tables-for-faster-queries)

### ````pg_class````

#### paragraph 1

1. Relation like objects are _tables_, _indexes_, _sequences_, _views_, and _materialized_ _views_

### ````pg_type````

#### paragraph 1

1. composite type

### ````pg_proc````

### ````pg_attribute````

### ````pg_catalog```` schema

## Exploring system tables with ````ECHO_HIDDEN```` or ````-E````

## Getting to Postgres internals