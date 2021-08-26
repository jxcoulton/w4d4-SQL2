-- 1
UPDATE customer
SET fax = NULL

-- 2
UPDATE customer
SET company = 'Self'
WHERE company IS NULL;

-- 3
UPDATE customer
SET last_name = 'Thompson'
WHERE last_name = 'Barnett';

-- 4
UPDATE customer
SET support_rep_id = 4
Where email = 'luisrojas@yahoo.cl'

-- 5
UPDATE track
SET composer = 'The darkness around us'
WHERE genre_id IN (
	SELECT genre_id 
    FROM genre
	WHERE name = 'Metal' and composer IS NULL);
