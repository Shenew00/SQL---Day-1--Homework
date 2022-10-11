SELECT *
FROM actor;

-- Query first and last name
SELECT first_name, last_name FROM actor;

--Query ACTORS WHOSE NAME IS NICK
SELECT last_name
FROM actor
WHERE first_name = 'Nick';


--looking for names that Start with the leter J
-- % is the wildcard
SELECT first_name
FROM actor
WHERE first_name LIKE 'J%';



-- LIMIT THE NUMBR OF CHARACTERS
SELECT first_name
FROM actor
WHERE first_name LIKE 'J__';

--USING BOTH WILDCARD AND UNDERSCORE
SELECT first_name
FROM actor
WHERE first_name LIKE 'K__%th';


--COMPARING OPERATORS
-- >
-- <
-- >=
-- <=
-- <> (NOT EQUAL TO)

--explore the payment table
SELECT *
FROM payment;

--find customers who paid more than $10
SELECT customer_id, amount
FROM payment
WHERE amount <= 10.00;

--query for customer who paid more than $2
-- in descending order (DESC)
SELECT customer_id, amount
FROM payment
WHERE amount >= 2.00
ORDER BY amount DESC;


--SQL aggregatioon => SUM() , AVG(), COUNT(, MIN(), MAX()
-- sisplay sum f aount great than 5.99
SELECT sum(amount)
FROM payment
WHERE amount > 5.99;

--display averages
SELECT AVG (amount)
FROM payment;

SELECT COUNT(*)
FROM payment;


SELECT COUNT (DISTINCT amount)
FROM payment;

SELECT amount
FROM payment WHERE amount = 4.00;

SELECT MIN(amount) AS cheapest_item
FROM payment;

SELECT MAX(amount) AS mostexpensive_item
FROM payment;



--GROUP BY CLAUSE
SELECT amount, COUNT(*)
FROM payment
WHERE COUNT (*) > 6.99
GROUP BY amount
ORDER BY COUNT (*) DESC;
LIMIT 5
OFFSET 1
;


