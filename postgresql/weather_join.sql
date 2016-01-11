-- list all weather with cities
SELECT *    -- wild character frowned upon for lack of control
    FROM weather, cities
    WHERE city = name;

-- more explicit joining
SELECT city, temp_lo, temp_hi, prcp, date, location
    FROM weather, cities
    WHERE city = name;

-- be more specific on column names when non-unique
SELECT weather.city, weather.temp_lo, weather.temp_hi,
       weather.prcp, weather.date, cities.location
    FROM weather, cities
    WHERE cities.name = weather.city;

-- alternate way of above
SELECT *
    FROM weather INNER JOIN cities ON (weather.city = cities.name);

-- keep records that don't even match right side, `LEFT OUTER JOIN`
SELECT *
    FROM weather LEFT OUTER JOIN cities ON (weather.city = cities.name);

-- various joins
-- LEFT OUTER JOIN
-- RIGHT OUTER JOIN
-- FULL OUTER JOIN

-- perform join on table itself
SELECT W1.city, W1.temp_lo AS low, W1.temp_hi AS high,
    W2.city, W2.temp_lo AS low, W2.temp_hi AS high
    FROM weather W1, weather W2     -- note the two weather tables
    WHERE W1.temp_lo < W2.temp_lo
    AND W1.temp_hi > W2.temp_hi;

-- use aliases for less typing
SELECT *
    FROM weather w, cities c
    WHERE w.city = c.name;
