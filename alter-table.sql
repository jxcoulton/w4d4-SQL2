-- 2
ALTER TABLE animals
ADD COLUMN location VARCHAR(50);

-- 3
INSERT INTO animals (name, location, age, type)
VALUES  ('Leo', 'Africa', 12, 'lion'), 
('Jerry', 'USA', 3, 'mouse'), 
('Marty', 'South Africa', 6, 'zebra') 

-- 4
ALTER TABLE animals
RENAME COLUMN type TO species;

-- 5
ALTER TABLE animals 
ALTER COLUMN species TYPE VARCHAR(50)

