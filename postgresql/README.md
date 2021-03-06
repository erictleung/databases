# PostgreSQL Notes

Single quotes!

PostgreSQL requires the following databses:

- `postgres`
- `<username>` (your username)

## Installation

### Homebrew

```
brew install postgresql
```

### Macports

```
sudo port install postgresqlXX # XX = version number
```

### Website

[PostgreSQL Core Distribution and binary packages][download]

[download]: http://www.postgresql.org/download/

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
$ psql -f <script_name>.sql # run script from CLI
```

## Basic Interactive Commands

```PLpgSQL
-- find version of PostgreSQL
SELECT version();

-- simple arithmetic
SELECT 2 + 2;

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

-- copy large amounts of data from flat-text files (specific to PostgreSQL)
COPY weather FROM '/home/user/weather.txt';
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
