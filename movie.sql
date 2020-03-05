-- Answer 1
SELECT * FROM movie.movies

-- Answer 2
SELECT id, title FROM movie.movies WHERE id <= 10

-- Answer 3
SELECT id, title FROM movie.movies WHERE id = 485

-- Answer 4
SELECT id FROM movie.movies WHERE title = "Made in America (1993)"

-- Answer 5
SELECT * FROM movie.movies WHERE id <= 10 ORDER BY title 

-- Answer 6
SELECT * FROM movie.movies WHERE title LIKE "%(2002)"

-- Answer 7
SELECT * FROM movie.movies WHERE title LIKE "Godfather%" 

-- Answer 8
SELECT * FROM movie.movies WHERE genres LIKE "%Comedy%"

-- Answer 9
SELECT * FROM movie.movies WHERE title LIKE "%(2000)" AND genres LIKE "%Comedy%"

-- Answer 10
SELECT * FROM movie.movies WHERE title LIKE "%death%" AND genres LIKE "%Comedy%"

-- Answer 11
SELECT * FROM movie.movies WHERE title LIKE "%super%(2001)" OR title LIKE "%super%(2002)"

-- -- Answer 12
CREATE TABLE `movies`.`actors`
(
  `id` INT NOT NULL AUTO_INCREMENT,
  `fullName` VARCHAR
(45) NULL,
  `charName` VARCHAR
(45) NULL,
  `DOB` DATE NULL,
  `movieID` INT NULL,
  PRIMARY KEY
(`id`));

-- Answer 13
INSERT INTO actors (actorname, character, DOB, movieID)
VALUES
(`Robin Williams`, `Mrs. Doubtfire`, `July 21, 1951`, '3' )
(`Leonardo Dicaprio`, `Jay Gatsby`, `November 11, 1974`, '3' )
(`Johnny Depp`, `Jack Sparrow`, `June 9, 1963`, '3')
(`Brad Pit`, `Cliff Booth`, `December 18, 1963`, '3')
(`Tom Hanks`, `Forrest Gump`, `July 9, 1956`, '3')
(`Will Smith`, `Hancock`, `September 25, 1968`, '3')
(`Morgan Freeman`, `God`, `June 1, 1937`, '3')
(`Tom Cruise`, `Ethan Hunt`, `July 3, 1962`, '3')
(`Scarlett Johansson`, `Black Widow`, `November 22, 1984`, '3')
(`Harrison Ford`, `Han Solo`, `July 13, 1942`, '3')

INSERT INTO actors (actorname, character, DOB, movieID)
VALUES
(`Robin Williams`, `Mrs. Doubtfire`, `July 21, 1951`, '24' )
(`Leonardo Dicaprio`, `Jay Gatsby`, `November 11, 1974`, '24' )
(`Johnny Depp`, `Jack Sparrow`, `June 9, 1963`, '24')
(`Brad Pit`, `Cliff Booth`, `December 18, 1963`, '24')
(`Tom Hanks`, `Forrest Gump`, `July 9, 1956`, '24')
(`Will Smith`, `Hancock`, `September 25, 1968`, '24')
(`Morgan Freeman`, `God`, `June 1, 1937`, '24')
(`Tom Cruise`, `Ethan Hunt`, `July 3, 1962`, '24')
(`Scarlett Johansson`, `Black Widow`, `November 22, 1984`, '24')
(`Harrison Ford`, `Han Solo`, `July 13, 1942`, '24')

INSERT INTO actors (actorname, character, DOB, movieID)
VALUES
(`Robin Williams`, `Mrs. Doubtfire`, `July 21, 1951`, '39' )
(`Leonardo Dicaprio`, `Jay Gatsby`, `November 11, 1974`, '39' )
(`Johnny Depp`, `Jack Sparrow`, `June 9, 1963`, '39')
(`Brad Pit`, `Cliff Booth`, `December 18, 1963`, '39')
(`Tom Hanks`, `Forrest Gump`, `July 9, 1956`, '39')
(`Will Smith`, `Hancock`, `September 25, 1968`, '39')
(`Morgan Freeman`, `God`, `June 1, 1937`, '39')
(`Tom Cruise`, `Ethan Hunt`, `July 3, 1962`, '39')
(`Scarlett Johansson`, `Black Widow`, `November 22, 1984`, '39')
(`Harrison Ford`, `Han Solo`, `July 13, 1942`, '39')

-- Answer 14
ALTER TABLE movies 
ADD MPAA_RATING varchar(255)

UPDATE movies
SET MPAA_RATING = 'PG-13'
WHERE id = '39';

UPDATE movies
SET MPAA_RATING = 'PG-13'
WHERE id = '44';

UPDATE movies
SET MPAA_RATING = 'R'
WHERE id = '47';

UPDATE movies
SET MPAA_RATING = 'R'
WHERE id = '76';

UPDATE movies
SET MPAA_RATING = 'PG-13'
WHERE id = '208';

-- Answer 15
SELECT movie.title, ratings.rating
FROM movies m
  LEFT JOIN ratings r on movie.id = rating.movie_id
WHERE title LIKE '%Godfather, The %'

-- Answer 16
SELECT movie.title, ratings.rating, ratings.timestamp
FROM movies m
  LEFT JOIN ratings r on movie.id = ratings.movie_id
WHERE title LIKE '%Godfather, The %'
ORDER BY timestamp DESC

-- Answer 17
SELECT movie.title, links.imdb_id
FROM movies m
  LEFT JOIN links l on movie.id = links.imdb_id
WHERE title LIKE '%(2005)%' AND genres LIKE "%comedy%"

-- Answer 18
SELECT movie.title, ratings.rating
FROM Movies.movies m
  LEFT JOIN ratings r ON m.id = ratings.movie_id
WHERE ISNULL(ratings.rating)

