-- 1
SELECT COUNT(*), g.name AS genre
FROM genre g
JOIN track t
ON g.genre_id = t.genre_id
GROUP BY genre;

-- 2
SELECT COUNT(*), g.name AS genre
FROM genre g
JOIN track t
ON g.genre_id = t.genre_id
WHERE g.name = 'Pop' OR g.name = 'Rock'
GROUP BY genre;

-- 3
SELECT COUNT(*), art.name AS artist
FROM artist art
JOIN album alb
ON art.artist_id = alb.artist_id
GROUP BY name;
