-- 1
SELECT i.customer_id AS customerinvoice, il.unit_price AS unitprice
FROM invoice i
JOIN invoice_line il
ON i.invoice_id = il.invoice_id
ORDER BY customerinvoice ASC;

-- 2
SELECT c.first_name AS FirstName, c.last_name AS LastName, i.invoice_date AS InvoiceDate, i.total AS Total
FROM customer c
JOIN invoice i
ON c.customer_id = i.customer_id
ORDER BY firstname ASC;

-- 3
SELECT c.first_name AS FirstName, c.last_name AS LastName, e.first_name AS EmployeeFirst, e.last_name AS EmployeeLast
FROM customer c
JOIN employee e
ON c.support_rep_id = e.employee_id
ORDER BY firstname ASC;

-- 4
SELECT alb.title AS title, art.name AS Name
FROM album alb
JOIN artist art
ON alb.artist_id = art.artist_id
ORDER BY name ASC;

-- 5
SELECT p.name AS name, t.track_id AS track_id
FROM playlist p
JOIN playlist_track t
ON p.playlist_id = t.playlist_id
WHERE name = 'Music'
ORDER BY track_id ASC;

-- 6
SELECT p.playlist_id AS playlistid, t.name AS name
FROM playlist_track p
JOIN track t
ON p.track_id = t.track_id
ORDER BY playlistid ASC;

-- 7
SELECT p.name AS playlist, t.name AS name
FROM playlist p
JOIN playlist_track pt
ON p.playlist_id = pt.playlist_id
JOIN track t
ON pt.track_id = t.track_id
ORDER BY playlist ASC;

-- 8
SELECT a.album_id AS album, t.name AS trackName, g.name AS genre
FROM track t
JOIN genre g
ON t.genre_id = g.genre_id
JOIN album a
ON t.album_id = a.album_id
ORDER BY genre ASC;