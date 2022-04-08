-- This is Kerry Rainford's Week 2 Assignment IS361

-- Question 1: HNL
SELECT * FROM flights ORDER BY distance DESC LIMIT 1;

-- Question 2: Part A: 1,2,3,4 Part B: The N670US Aircraft (Engines = 4) has the most seats. It has 450 seats.
SELECT DISTINCT engines FROM planes ORDER BY engines;

SELECT tailnum, engines, seats FROM planes WHERE engines ='1' ORDER BY seats DESC LIMIT 1;

SELECT tailnum, engines, seats FROM planes WHERE engines ='2' ORDER BY seats DESC LIMIT 1;

SELECT tailnum, engines, seats FROM planes WHERE engines ='3' ORDER BY seats DESC LIMIT 1;

SELECT tailnum, engines, seats FROM planes WHERE engines ='4' ORDER BY seats DESC LIMIT 1;

-- Question 3: The total number of flights are 336776.
SELECT COUNT(*) FROM flights;

-- Question 4: Carrier 9E has 18460 flights
-- Carrier AA has 32729 flights
-- Carrier AS has 714 flights
-- Carrier B6 has 54635 flights
-- Carrier DL has 48110 flights
-- Carrier EV has 54173 flights
-- Carrier F9 has 685 flights
-- Carrier FL has 3260 flights
-- Carrier HA has 342 flights
-- Carrier MQ has 26397 flights
-- Carrier 00 has 32 flights
-- Carrier UA has 58665 flights
-- Carrier US has 20536 flights
-- Carrier VX has 5162 flights
-- Carrier WN has 12275 flights
-- Carrier YV has 601 flights

 
SELECT carrier, COUNT(*) FROM flights GROUP BY carrier ORDER BY carrier;

-- Question 5
SELECT carrier, COUNT(*) FROM flights GROUP BY carrier ORDER BY COUNT(*) DESC;

-- Question 6
SELECT carrier, COUNT(*) FROM flights GROUP BY carrier ORDER BY COUNT(*) DESC LIMIT 5;

-- Question 7
SELECT carrier, COUNT(*) FROM flights WHERE distance >= 1000 GROUP BY carrier ORDER BY COUNT(*) DESC LIMIT 5;

-- Question 8: What is the total amount of air time pilots have flew a plane for each airline from highest to lowest?
SELECT carrier, COUNT(*) FROM flights GROUP BY air_time ORDER BY COUNT(*) DESC;

