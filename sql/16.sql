/*
 * Use a JOIN to order the films by most profitable,
 * where the profit is the total amount that customer have payer for the film.
 * Use tables payment, rental, inventory, and film. 
 */

SELECT title, sum(payment.amount) AS profit FROM film
JOIN inventory ON inventory.film_id = film.film_id
JOIN rental  ON inventory.inventory_id = rental.inventory_id
JOIN payment ON payment.rental_id = rental.rental_id
GROUP BY title
ORDER BY sum(payment.amount) DESC;
