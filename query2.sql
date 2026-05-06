SELECT m.id, m.title, m.release_date, m.rating, d.first_name, d.last_name, g.name
FROM movies m
JOIN directors d ON d.id = m.director_id
JOIN genres g ON g.id = m.genre_id
LIMIT 50;

SELECT m.id, m.title, ma.role, a.first_name, a.last_name
FROM movies_actor ma
JOIN movies m ON m.id = ma.movie_id
JOIN actord a On a.id = ma.actor_id