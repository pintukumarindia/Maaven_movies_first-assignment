use mavenmovies;
select * from actor;
select * from actor_award;
select * from address;
select * from advisor;
select * from category;
select * from city;
select * from country;
select * from customer;
select * from film;
select * from film_actor;
select * from film_category;
select * from film_text;
select * from inventory;
select * from investor;
select * from language;
select * from payment;
select * from rental;
select * from staff;
select * from store;

-- ----------------------------------------Assignment SQL Commands Solution-------------------------------------------------------------------------------------------------------------

-- 1.Identify the primary keys and foreign keys in maven movies db. Discuss the differences
SELECT * FROM information_schema.key_column_usage;

-- 2.List all details of actors
select * from actor;

-- 3.List all customer information from DB.
select * from customer;

-- 4.List different countries.
select distinct country from country;

-- 5.Display all active customers.
select * from customer;
SELECT customer_id, first_name, last_name, email FROM customer WHERE `active`=1;

-- 6.List of all rental IDs for customer with ID 1.
select * from customer;
select * from rental;
-- 1ST MENTOD----------------------------------------
select r.rental_id, c.customer_id
from customer as c
inner join rental as r
ON c.customer_id = r.customer_id
where c.customer_id =1
order by r.rental_id desc;

-- 2ND METHOD---------------------------------------
SELECT rental_id FROM rental WHERE customer_id=1
order by rental_id desc;


-- 7.Display all the films whose rental duration is greater than 5.
select film_id from film where rental_duration > 5;

-- 7.List the total number of films whose replacement cost is greater than $15 and less than $20.
select * from film;
select film_id from film where replacement_cost > 15 and replacement_cost <20;

-- 8.Display the count of unique first names of actors.
select count(distinct first_name) from actor;

-- 9.Display the first 10 records from the customer table .
select * from customer
limit 10;

-- 10.Display the first 3 records from the customer table whose first name starts with ‘b’.
select * from customer
where first_name like "b%"
limit 3;

-- 11.Display the names of the first 5 movies which are rated as ‘G’.

select title from film
where rating = 'G'
Limit 5;
-- 12.Find all customers whose first name starts with "a".

select * from customer where first_name like "a%";

-- 13.Find all customers whose first name ends with "a".

select * from customer where first_name like "%a";

-- 14.Display the list of first 4 cities which start and end with ‘a’ .

select * from city where city like "a%a"
limit 4;

-- 15.Find all customers whose first name have "NI" in any position.

select * from customer where first_name like "%NI";

-- 16.Find all customers whose first name have "r" in the second position .

select * from customer where first_name like "__r%";

-- 17.Find all customers whose first name starts with "a" and are at least 5 characters in length.

select * from customer where first_name like "a____%";

-- 18.Find all customers whose first name starts with "a" and ends with "o".

select * from customer where first_name like "a%o";

-- 19.Get the films with pg and pg-13 rating using IN operator.\

select film_id from film
where rating in('PG','PG-13');

-- 20.Get the films with length between 50 to 100 using between operator.

select * from film where length between 50 AND 100;

-- 21.Get the top 50 actors using limit operator.

SELECT * FROM actor LIMIT 50;

-- 22.Get the distinct film ids from inventory table.

select distinct film_id from inventory;


-- ----------------------------------------------------------------------THANK YOU!----------------------------------------------------------------------------------------------------