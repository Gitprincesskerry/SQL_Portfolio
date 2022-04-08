-- This is Kerry Rainford's Week 4 Assignment IS361

-- Question 1: Write a script to select all data from the planes table
SELECT * FROM planes;

-- Question 2: Update the planes table so that rows that have no year will be assigned the year 2013.
-- (missing values will display as NULL).
UPDATE planes 
SET year = 2013
WHERE year IS NULL;

-- Question 3: Insert a new record to the planes table with the following values:
-- Tailnum: N15501
-- Year: 2013
-- type: Fixed wing single engine
-- Manufacturer: BOEING
-- Model: A222-101
-- Engines: 3
-- Seats: 100
-- Speed: NULL
-- Engine: Turbo-fan
INSERT INTO planes(tailnum, year, type, manufacturer, model, engines, seats, speed, engine)
VALUES('N15501','2013','Fixed wing single engine','BOEING','A222-101','3','100', NULL,'Turbo-fan');

-- Question 4:
DELETE FROM planes 
WHERE tailnum = 'N15501'
AND year = '2013'
AND type = 'Fixed wing single engine'
AND manufacturer = 'BOEING'
AND model = 'A222-101'
AND engines = '3'
AND seats = '100'
AND speed = NULL
AND engine = 'Turbo-fan'