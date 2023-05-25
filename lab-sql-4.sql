use sakila;

-- Get film ratings.
select title, rating from film;

-- Get release years.
select title, release_year from film;

-- Get all films with ARMAGEDDON in the title. ---???
SELECT title, description
FROM film
WHERE title LIKE '%ARMAGEDDON%';

SELECT title FROM film;

-- Get all films with APOLLO in the title
SELECT title, description
FROM film
WHERE title LIKE '%APOLLO%';

-- Get all films which title ends with APOLLO.
SELECT title, description
FROM film
WHERE title LIKE '%APOLLO';

-- Get all films with word DATE in the title.
SELECT title, description
FROM film
WHERE title LIKE '%DATE';

SELECT * FROM film WHERE title REGEXP '[[:<:]]date';

-- Get 10 films with the longest title.
SELECT title, length(title) as long_title
FROM film
order by long_title desc
limit 10;

-- Get 10 the longest films.
SELECT title, length
FROM film
order by length desc
limit 10;

-- How many films include Behind the Scenes content?
SELECT * FROM film WHERE special_features REGEXP '[[:<:]]beh';

SELECT 
count(special_features)
FROM film
WHERE special_features LIKE '%Behind the Scenes%';

-- List films ordered by release year and title in alphabetical order.
select release_year, title
from film 
order by release_year desc;
 