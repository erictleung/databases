# PostgreSQL Notes

Single quotes!

PostgreSQL requires the following databses:

- `postgres`
- `<username>` (your username)

## Able to Do

- Create database
- List tables in database
- Drop database
- Create table
- Add data
- Inner joins
- Outer joins

## Basic Shell Commands

```Shell
$ createdb <DB NAME> # create database by name
$ dropdb <DB NAME> # drop/delete database by name
$ psql <DB NAME> # start PostgreSQL in particular database
$ psql -l # list all the databases in the server
```

## Basic Interactive Commands

```PLpgSQL
-- find version of PostgreSQL
SELECT version();

-- get current date
SELECT current_date;

-- get help
\h

-- quit PostgreSQL
\q

-- run PostgreSQL script
\i path/to/script.sql

-- list all databases
\l
```

## Datatypes

- `int`
- `smallint`
- `real`
- `double precision`
- `char(N)`
- `varchar(N)`
- `date`
- `time`
- `timestamp`
- `interval`
