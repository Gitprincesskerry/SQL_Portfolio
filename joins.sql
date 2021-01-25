--Practice utilizing Joins 	

--Question 1: Join the film to the film_actor table.
SELECT fa.actor_id AS ActorID , fa.film_id AS FilmID,fa.last_update AS Timelastupdated FROM film_actor fa
INNER JOIN film fl
ON fa.film_id = fl.film_id;

-- Question 2: Join the actor table to the film_actor table. 
SELECT a.actor_id AS Actor_ID, a.first_name AS First_Name, a.last_name AS Last_Name, a.last_update AS Timestamp_Of_Actor_Table, fa.film_id AS Film_Id, fa.last_update AS Time_Stamp_Of_Film_Actor_Table FROM actor a
INNER JOIN film_actor fa
ON a.actor_id = fa.actor_id;

-- Question 3: Try to join the actor, film_actor, and film table together (3 joins!)
SELECT * FROM actor a
INNER JOIN film_actor fa ON a.actor_id = fa.actor_id
INNER JOIN film f ON f.film_id = fa.film_id;
