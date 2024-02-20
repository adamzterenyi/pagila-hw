/* 
 * Use a JOIN to list the number of copies of each film in the inventory system that begins with the letter h.
 * Use tables inventory and film.
 * Order by film title alphabetically.
 */

SELECT film.film_id as film_id, film.title as title, count(inventory.inventory_id) as count from inventory
JOIN film ON film.film_id = inventory.film_id WHERE film.title iLike 'h%'
GROUP BY film.film_id, film.title
ORDER BY film.title DESC;
