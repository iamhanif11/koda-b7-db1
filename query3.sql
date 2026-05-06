--menampilkan list director beserta genre yang di direct
SELECT d.id, d.first_name, d.last_name, COUNT(DISTINCT m.genre_id) AS 'Total Genre'
FROM movies m
JOIN directors d ON d.id = m.director_id
GROUP BY d.id, d.first_name, d.last_name;

-- list aktor dengan peran lebih 5
SELECT a.id, a.first_name, a.last_name, COUNT(ma.role)
FROM actors a 
JOIN movies_actors ma ON a.id = ma.actor_id
GROUP BY a.id, a.first_name, a.last_name
HAVING COUNT(ma.role) > 5;

--director tersibuk sepanjang masa
SELECT d.first_name,d.last_name, COUNT(m.id) AS 'Total Movie'
FROM movies m 
JOIN directors d ON d.id =m.director_id
GROUP BY d.first_name, d.last_name
ORDER BY 'Total Movie' DESC
LIMIT 1;

--tahun tersibuk
SELECT extract(YEAR FROM release_date) AS 'Release Year', COUNT(id) AS 'Total Film'
FROM movies
GROUP BY extract(YEAR FROM release_date)
ORDER BY 'Total Film' DESC
LIMIT 1;


-- data movies dengan list actor
SELECT m.title, STRING_AGG(a.first_name || ' ' || a.last_name, ', ') AS 'List Actor'
FROM movies_actors ma
JOIN actors a ON a.id = ma.actor_id
JOIN movies m ON m.id = ma.movie_id
GROUP BY m.title;


