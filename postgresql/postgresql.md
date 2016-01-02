# PostgreSQL Notes

Single quotes!

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
```
