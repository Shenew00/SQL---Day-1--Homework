-- 1. How many actors are there with the last name ‘Wahlberg’?
SELECT COUNT (last_name)
FROM actor
WHERE last_name  = 'Wahlberg';

-- 2. How many payments were made between $3.99 and $5.99?
SELECT COUNT (*)
FROM payment
WHERE amount BETWEEN 3.99 and 5.99;

-- 3. What film does the store have the most of? (search in inventory)
SELECT film_id COUNT(*)
FROM inventory
group by film_id;
ORDER BY COUNT(*) DESC;

SELECT title
FROM film
WHERE  film_id = 200;

-- 4. How many customers have the last name ‘William’?
-- NO DATA
SELECT last_name, COUNT(last_name)
FROM staff
WHERE last_name  = 'William'


-- 5. What store employee (get the id) sold the most rentals?
SELECT staff_id, COUNT(staff_id)
FROM rental
GROUP BY staff_id;

SELECT first_name, last_name
FROM staff
WHERE staff_id = 1;

-- 6. How many different district names are there?
SELECT district, COUNT(DISTINCT district)
FROM address
GROUP BY district;

-- 7. What film has the most actors in it? (use film_actor table and get film_id)
SELECT film_id, COUNT(actor_id)
FROM film_actor
GROUP BY film_id
ORDER BY COUNT(actor_id) DESC;

SELECT film_id, title
FROM film
WHERE film_id = 508;

-- 8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
-- count is 21
SELECT COUNT(*)
FROM customer
WHERE store_id = 1 AND last_name LIKE '%es';

-- 9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers with ids between 380 and 430? (use group by and having > 250)

SELECT amount, COUNT(*) AS a_number
FROM payment
GROUP BY amount
HAVING COUNT(*)>250
ORDER BY COUNT(*) DESC;

-- 10. Within the film table, how many rating categories are there? And what rating has the most movies total?

SELECT rating, COUNT( DISTINCT rating)
FROM film
GROUP BY rating
ORDER by COUNT(*) DESC;

SELECT COUNT(DISTINCT rating)
FROM film;

SELECT rating, COUNT(*)
FROM film
WHERE rating = 'PG-13'
GROUP BY rating;