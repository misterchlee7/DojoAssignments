SELECT customer.first_name, customer.last_name, customer.email, address.address
FROM customer
LEFT JOIN address ON customer.address_id = address.address_id
WHERE address.city_id = 312;

SELECT film.title, film.description, film.release_year, film.rating, film.special_features, category.name
FROM film_category
LEFT JOIN category ON film_category.category_id = category.category_id
RIGHT JOIN film ON film.film_id = film_category.film_id
WHERE category.name = "comedy";

SELECT actor.actor_id, CONCAT(actor.first_name," ",actor.last_name), film.title, film.description, film.release_year
FROM film_actor
LEFT JOIN actor ON actor.actor_id = film_actor.actor_id
RIGHT JOIN film ON film_actor.film_id = film.film_id
WHERE actor.actor_id = 5;

SELECT customer.store_id, address.city_id, customer.first_name, customer.last_name, customer.email, address.address
FROM customer
LEFT JOIN address ON customer.address_id = address.address_id
WHERE customer.store_id = 1 AND address.city_id IN (1,42,312,459);

SELECT film.title, film.description, film.release_year, film.rating, film.special_features
FROM film_actor
LEFT JOIN actor ON actor.actor_id = film_actor.actor_id
RIGHT JOIN film ON film_actor.film_id = film.film_id
WHERE film.rating LIKE "G" AND film.special_features LIKE "%behind the scenes%" AND actor.actor_id = 15;

SELECT film.film_id, film.title, actor.actor_id, actor.first_name
FROM film_actor
LEFT JOIN actor ON actor.actor_id = film_actor.actor_id
RIGHT JOIN film ON film_actor.film_id = film.film_id
WHERE film.film_id = 369;

SELECT film.title, film.description, film.release_year, film.rating, film.special_features, category.name
FROM film_category
LEFT JOIN category ON film_category.category_id = category.category_id
RIGHT JOIN film ON film.film_id = film_category.film_id
WHERE film.rental_rate = 2.99 AND category.name LIKE "%drama%";

SELECT film.title, film.description, film.release_year, film.rating, film.special_features, category.name, actor.first_name, actor.last_name
FROM film
JOIN film_category ON film.film_id = film_category.film_id
JOIN category ON film_category.category_id = category.category_id
JOIN film_actor ON film_actor.film_id = film.film_id
JOIN actor ON actor.actor_id = film_actor.actor_id
WHERE category.name = "action" AND actor.first_name = "sandra" AND actor.last_name = "kilmer";