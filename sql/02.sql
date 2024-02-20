/*
 * Find the actor_id of every actor whose first name starts with 'j'.
 * Order the results from low to hi.
 */

SELECT get_actor_ids as actor_id from get_actor_ids('j%');
