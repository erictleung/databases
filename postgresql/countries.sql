-- create countries table
CREATE TABLE countries (
  country_code char(2) PRIMARY KEY,
  country_name text UNIQUE
);

-- insert some data into countries table
INSERT INTO countries (country_code, country_name)
VALUES ('us', 'United States'), ('mx', 'Mexico'), ('au', 'Australia'),
       ('al', 'Albania'), ('dz', 'Algeria'), ('as', 'American Samoa'),
       ('gb', 'United Kingdom'), ('ge', 'Germany'), ('ll', 'Loopaland');

-- the code below will throw an error
-- INSERT INTO countries
-- VALUES ('uk','United Kingdom');

-- show that proper rows were inserted
SELECT *
FROM countries;

-- remove data from countries table
DELETE FROM countries
WHERE country_code = 'll';

-- create new table that references countries table
CREATE TABLE cities (
  name text NOT NULL,
  postal_code varchar(9) CHECK (postal_code <> ''),
  country_code char(2) REFERENCES countries, -- foreign key restraint
  PRIMARY KEY (country_code, postal_code)
);

-- add entry to cities table (should throw up an error)
-- INSERT INTO cities
-- VALUES ('Toronto','M4C1B5','ca');

-- let's try again
INSERT INTO cities
VALUES ('Portland','87200','us');

-- update existing entry in cities table
UPDATE cities
SET postal_code = '97205'
WHERE name = 'Portland';

-- join tables together in querying
SELECT cities.*, country_name -- ".*" means to select all columns from table
FROM cities INNER JOIN countries
  ON cities.country_code = countries.country_code;

-- create new table of venues in country and city
CREATE TABLE venues (
  venue_id SERIAL PRIMARY KEY,
  name varchar(255),
  street_address text,
  type char(7) CHECK ( type in ('public','private')  ) DEFAULT 'public',
  postal_code varchar(9),
  country_code char(2),
  FOREIGN KEY (country_code, postal_code)
      REFERENCES cities (country_code, postal_code) MATCH FULL
);

-- insert values into venues
INSERT INTO venues (name, postal_code, country_code)
VALUES ('Crystal Ballroom', '97205', 'us');

-- select using aliases
SELECT v.venue_id, v.name, c.name
FROM venues v INNER JOIN cities c
  ON v.postal_code=c.postal_code AND v.country_code=c.country_code;

-- return values after inserting
INSERT INTO venues (name, postal_code, country_code)
VALUES ('Voodoo Donuts', '97205', 'us') RETURNING venue_id;

-- create new events table
CREATE TABLE events (
  title varchar(20),
  starts timestamp,
  ends timestamp,
  venue_id SERIAL REFERENCES venues,
  event_id SERIAL PRIMARY KEY
);

-- add more data to events table
INSERT INTO events (title, starts, ends, venue_id, event_id)
VALUES ('LARP Club', '2012-02-15 17:30:00', '2012-02-15 19:30:00', 2, 1),
  ('April Fools Day', '2012-04-01 00:00:00', '2012-04-01 23:59:00', 2, 2),
  ('Christmas Day', '2012-12-25 00:00:00', '2012-12-25 23:59:00', 1, 3);
