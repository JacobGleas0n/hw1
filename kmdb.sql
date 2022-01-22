-- In this assignment, you'll be building the domain model, database 
-- structure, and data for "KMDB" (the Kellogg Movie Database).
-- The end product will be a report that prints the movies and the 
-- top-billed cast for each movie in the database.

-- Requirements/assumptions
--
-- - There will only be three movies in the database – the three films
--   that make up Christopher Nolan's Batman trilogy
-- - Movie data includes the movie title, year released, MPAA rating,
--   and director
-- - A movie has a single director
-- - A person can be the director of and/or play a role in a movie
-- - Everything you need to do in this assignment is marked with TODO!

-- Rubric
-- 
-- There are three deliverables for this assignment, all delivered via
-- this file and submitted via GitHub and Canvas:
-- - A domain model, implemented via CREATE TABLE statements for each
--   model/table. Also, include DROP TABLE IF EXISTS statements for each
--   table, so that each run of this script starts with a blank database.
--   (10 points)
-- - Insertion of "Batman" sample data into tables (5 points)
-- - Selection of data, so that something similar to the following sample
--   "report" can be achieved (5 points)

-- Submission
-- 
-- - "Use this template" to create a brand-new "hw1" repository in your
--   personal GitHub account, e.g. https://github.com/<USERNAME>/hw1
-- - Do the assignment, committing and syncing often
-- - When done, commit and sync a final time, before submitting the GitHub
--   URL for the finished "hw1" repository as the "Website URL" for the 
--   Homework 1 assignment in Canvas

-- Successful sample output is as shown:

-- Movies
-- ======

-- Batman Begins          2005           PG-13  Christopher Nolan
-- The Dark Knight        2008           PG-13  Christopher Nolan
-- The Dark Knight Rises  2012           PG-13  Christopher Nolan

-- Top Cast
-- ========

-- Batman Begins          Christian Bale        Bruce Wayne
-- Batman Begins          Michael Caine         Alfred
-- Batman Begins          Liam Neeson           Ra's Al Ghul
-- Batman Begins          Katie Holmes          Rachel Dawes
-- Batman Begins          Gary Oldman           Commissioner Gordon
-- The Dark Knight        Christian Bale        Bruce Wayne
-- The Dark Knight        Heath Ledger          Joker
-- The Dark Knight        Aaron Eckhart         Harvey Dent
-- The Dark Knight        Michael Caine         Alfred
-- The Dark Knight        Maggie Gyllenhaal     Rachel Dawes
-- The Dark Knight Rises  Christian Bale        Bruce Wayne
-- The Dark Knight Rises  Gary Oldman           Commissioner Gordon
-- The Dark Knight Rises  Tom Hardy             Bane
-- The Dark Knight Rises  Joseph Gordon-Levitt  John Blake
-- The Dark Knight Rises  Anne Hathaway         Selina Kyle

-- Turns column mode on but headers off
.mode column
.headers off

-- Drop existing tables, so you'll start fresh each time this script is run.
-- TODO!

DROP TABLE IF EXISTS movies;
DROP TABLE IF EXISTS cast;
DROP TABLE IF EXISTS performers;

-- Create new tables, according to your domain model
-- TODO!

CREATE TABLE movies (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT,
    release_date TEXT,
    rating TEXT,
    director TEXT
 );

CREATE TABLE cast (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    movie_id TEXT,
    performer_id TEXT,
    role TEXT
);

CREATE TABLE performers (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT

);

-- Insert data into your database that reflects the sample data shown above
-- Use hard-coded foreign key IDs when necessary
-- TODO!

INSERT INTO movies (
    title,
    release_date,
    rating,
    director,
)

VALUES (
    "Batman Begins",
    "2005",
    "PG-13",
    "Christopher Nolan"
)

INSERT INTO movies (
    "The Dark Knight",
    "2008",
    "PG-13",
    "Christopher Nolan"
)

INSERT INTO movies (
    "The Dark Knight Rises",
    "2008",
    "PG-13",
    "Christopher Nolan"
)

INSERT INTO performers (
    "Christian Bale"
)

INSERT INTO performers (
    "Michael Caine"
)

INSERT INTO performers (
    "Liam Neeson"
)

INSERT INTO performers (
    "Katie Holmes"
)

INSERT INTO performers (
    "Gary Oldman"
)

INSERT INTO performers (
    "Heath Ledger"
)

INSERT INTO performers (
    "Aaron Eckhart"
)

INSERT INTO performers (
    "Maggie Gyllenhaal"
)

INSERT INTO performers (
    "Tom Hardy"
)

INSERT INTO performers (
    "Joseph Gordon-Levitt"
)

INSERT INTO performers (
    "Anne Hathaway"
)

INSERT INTO cast (
    "1",
    "1",
    "Bruce Wayne"
)

INSERT INTO cast (
    "1",
    "2",
    "Alfred"
)

INSERT INTO cast (
    "1",
    "3",
    "Ra's Al Ghul"
)

INSERT INTO cast (
    "1",
    "4",
    "Rachel Dawes"
)

INSERT INTO cast (
    "1",
    "5",
    "Commissioner Gordon"
)

INSERT INTO cast (
    "2",
    "1",
    "Bruce Wayne"
)

INSERT INTO cast (
    "2",
    "6",
    "Joker"
)

INSERT INTO cast (
    "2",
    "7",
    "Harvey Dent"
)

INSERT INTO cast (
    "2",
    "2",
    "Alfred"
)

INSERT INTO cast (
    "2",
    "8",
    "Rachel Dawes"
)

INSERT INTO cast (
    "3",
    "1",
    "Bruce Wayne"
)

INSERT INTO cast (
    "3",
    "5",
    "Commissioner Gordon"
)

INSERT INTO cast (
    "3",
    "9",
    "Bane"
)

INSERT INTO cast (
    "3",
    "10",
    "John Blake"
)

INSERT INTO cast (
    "3",
    "11",
    "Selina Kyle"
)

-- Prints a header for the movies output
.print "Movies"
.print "======"
.print ""

-- The SQL statement for the movies output
-- TODO!

SELECT title, release_date, rating, director
FROM movies
GROUP BY title
ORDER BY year;

-- Prints a header for the cast output
.print ""
.print "Top Cast"
.print "========"
.print ""


-- The SQL statement for the cast output
-- TODO!

SELECT movies.title, performers.name, cast.role 
FROM cast
INNER JOIN movies ON cast.movie_id = movies.id 
INNER JOIN cast ON performers.id = cast.performer_id
GROUP BY movies.title;
