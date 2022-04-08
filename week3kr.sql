-- This is Kerry Rainford's Week 3 Assignment IS361

-- Question 1: Show the total number of flights.
-- The total number of flights are 336776.
SELECT COUNT(*) FROM flights;

-- Question 2: Show the total number of flights by airline (carrier)
-- Carrier 9E has 18460 flights
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

-- Question 3: Show all of the airlines, ordered by number of flights in descending order.
SELECT carrier, COUNT(*) FROM flights GROUP BY carrier ORDER BY COUNT(*) DESC;

-- Question 4: Show only the top 5 airlines, by number of flights, ordered by number of flights in descending order.

SELECT carrier, COUNT(*) FROM flights GROUP BY carrier ORDER BY COUNT(*) DESC LIMIT 5;

-- Question 5: Show only the top 5 airlines, by number of flights of distance 1,000 miles or greater, ordered by number of flights in descending order.
SELECT carrier, COUNT(*) FROM flights WHERE distance >= 1000 GROUP BY carrier ORDER BY COUNT(*) DESC LIMIT 5;

-- Question 6: Create a question that (a) uses data from the flights database, and
-- (b) requires aggregation to answer it, 
-- and write down both the question, and the query that answers the question
-- Made up question: What is the total amount of arrival time pilots have flew a plane for each airline from highest to lowest?
SELECT carrier, SUM(arr_delay) FROM flights 
GROUP BY carrier
ORDER BY carrier DESC;

