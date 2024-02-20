/*
 * Use a JOIN to list each film and the number of actors who are listed for that film.
 * Use tables film and film_actor.
 */

SELECT film.title as title, film.film_id as film_id, count(film_actor.actor_id) as actor_count from film
JOIN film_actor on film.film_id = film_actor.film_id
GROUP BY title, film.film_id
ORDER BY count(actor_id), title;
