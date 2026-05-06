SELECT title, release_date, rating
FROM movies 
WHERE extract(YEAR FROM release_date) = 2020;

SELECT first_name
FROM actors 
WHERE first_name LIKE '%s'

SELECT title, rating, release_date
FROM movies
WHERE rating BETWEEN 4.0 AND 8.0 AND extract(YEAR FROM release_date) BETWEEN 2004 AND 2010
