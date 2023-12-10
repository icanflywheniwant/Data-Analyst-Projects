CREATE TABLE films (
  name TEXT,
  release_year INTEGER
);

INSERT INTO films (name, release_year)
VALUES ('Notting Hill', 1999);

INSERT INTO films (name, release_year)
VALUES ('Madagascar', 2005);

INSERT INTO films (name, release_year)
VALUES ('The Creator', 2023);

SELECT * FROM films WHERE release_year = 1999;

ALTER TABLE films ADD COLUMN runtime INTEGER;
ALTER TABLE films ADD COLUMN category TEXT;
ALTER TABLE films ADD COLUMN rating REAL;
ALTER TABLE films ADD COLUMN box_office BIGINT;

UPDATE films
SET runtime = 124,
    category = 'comedy',
    rating = 7.2,
    box_office = 124182015   
WHERE name = 'Notting Hill';

UPDATE films
SET runtime = 86,
    category = 'animation',
    rating = 6.9,
    box_office = 542063846   
WHERE name = 'Madagascar';

UPDATE films
SET runtime = 133,
    category = 'sci-fi',
    rating = 6.9,
    box_office = 104231146  
WHERE name = 'The Creator';

ALTER TABLE films
ADD CONSTRAINT unique_name UNIQUE (name);

SELECT * FROM films;