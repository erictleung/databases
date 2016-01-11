-- write expressions in SELECT statements (`AS` is optional)
SELECT city, (temp_hi+temp_lo)/2 AS temp_avg, date FROM weather;

-- select data on condition(s)
SELECT * FROM weather
    WHERE city = 'San Francisco' AND prcp > 0.0;

-- order your returned results
SELECT * FROM weather
    ORDER BY city;

-- have more control over order of results (first by city, then temp_lo)
SELECT * FROM weather
    ORDER BY city, temp_lo;

-- only return unique results
SELECT DISTINCT city
    FROM weather;

-- combine unique and certain order
SELECT DISTINCT city    -- return unique cities
    FROM weather        -- get data from weather table
    ORDER BY city;      -- order by city name
