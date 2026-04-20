/*
a) The actor table includes information about actors.
It contains columns such as:
	•	actor_id (unique ID for each actor)
	•	first_name
	•	last_name
	•	last_update

This table stores basic identifying information for each actor.

b) The film table includes information about movies.
It contains columns such as:
	•	film_id (unique ID for each film)
	•	title
	•	description
	•	release_year
	•	rental_duration
	•	rental_rate
	•	length
	•	rating
	•	last_update

This table stores detailed information about each film.

c) The table that contains both actor_id and film_id is: film_actor
This is a junction table that connects actors and films, representing a many-to-many relationship.

d) The rental table includes information about rental transactions.
It contains columns such as:
	•	rental_id
	•	rental_date
	•	inventory_id
	•	customer_id
	•	return_date
	•	staff_id
	•	last_update

This table shows which customer rented which item and when.

The information is not very easy to read because it uses IDs instead of names.
For example, it shows customer_id and inventory_id instead of actual customer names or film titles.
To fully understand the data, you need to join this table with other tables.

e) The inventory table includes information about the films available in the store.
It contains columns such as:
	•	inventory_id
	•	film_id
	•	store_id
	•	last_update

This table links films to specific store inventory.

Similar to the rental table, it is not easy to read on its own because it uses IDs instead of descriptive information.

f) Rental, inventory, film
To find the names of films rented on a specific date, you start with the rental table to filter by rental_date. 
Then, you join it with the inventory table using inventory_id to find which film was rented. 
Finally, you join the film table using film_id to retrieve the film titles.

*/

SELECT rental_date, inventory_id FROM rental;
SELECT inventory_id, film_id FROM inventory;
SELECT film_id, title FROM film;