/*
 * Use a JOIN to display the total amount rung up by each staff member in January of 2020.
 * Use tables staff and payment.
 */

SELECT staff.first_name AS first_name, staff.last_name AS last_name, sum(payment.amount) AS sum from staff LEFT JOIN payment ON staff.staff_id = payment.staff_id WHERE payment_date >= '2020-01-01' AND payment_date < '2020-02-01' GROUP BY first_name, last_name ORDER BY staff.first_name; 
