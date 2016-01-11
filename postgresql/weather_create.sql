-- create weather table
CREATE TABLE weather (
    city          varchar(80),
    temp_lo       int,           -- low temperature
    temp_hi       int,           -- high temperature
    prcp          real,          -- precipitation
    date          date
);

-- create cities table
CREATE TABLE cities (
    name            varchar(80),
    location        point
);

-- insert data into weather
INSERT INTO weather VALUES ('San Francisco', 46, 50, 0.25, '1994-11-27');

-- insert data into cities
INSERT INTO cities VALUES ('San Francisco', '(-194.0, 53.0)');

-- explicit alternate way to insert values
INSERT INTO weather (city, temp_lo, temp_hi, prcp, date)
    VALUES ('San Francisco', 43, 57, 0.0, '1994-11-29');

-- can change the order as well
INSERT INTO weather (date, city, temp_hi, temp_lo)
    VALUES ('1994-11-29', 'Hayward', 54, 37);
