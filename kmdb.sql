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
DROP TABLE IF EXISTS performers;
DROP TABLE IF EXISTS top_cast;

-- Create new tables, according to your domain model
-- TODO!

CREATE TABLE movies (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT,
    release_date TEXT,
    rating TEXT,
    performer_id TEXT
 );

CREATE TABLE performers (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT
);

CREATE TABLE top_cast (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    movie_id INTEGER,
    performer_id INTEGER,
    role TEXT
);

-- Insert data into your database that reflects the sample data shown above
-- Use hard-coded foreign key IDs when necessary
-- TODO!

INSERT INTO movies (
    title,
    release_date,
    rating,
    performer_id
)

VALUES (
    "Batman Begins",
    "2005",
    "PG-13",
    12
);

INSERT INTO movies (
    title,
    release_date,
    rating,
    performer_id
)

VALUES (
    "The Dark Knight",
    "2008",
    "PG-13",
    12
);

INSERT INTO movies (
    title,
    release_date,
    rating,
    performer_id
)

VALUES (
    "The Dark Knight Rises",
    "2012",
    "PG-13",
    12
);

INSERT INTO performers (
    name
)

VALUES (
    "Christian Bale"
);

INSERT INTO performers (
    name
)

VALUES (
    "Michael Caine"
);

INSERT INTO performers (
    name
)

VALUES (
    "Liam Neeson"
);

INSERT INTO performers (
    name
)

VALUES (
    "Katie Holmes"
);

INSERT INTO performers (
    name
)

VALUES (
    "Gary Oldman"
);

INSERT INTO performers (
    name
)

VALUES (
    "Heath Ledger"
);

INSERT INTO performers (
    name
)

VALUES (
    "Aaron Eckhart"
);

INSERT INTO performers (
    name
)

VALUES (
    "Maggie Gyllenhaal"
);

INSERT INTO performers (
    name
)

VALUES (
    "Tom Hardy"
);

INSERT INTO performers (
    name
)

VALUES (
    "Joseph Gordon-Levitt"
);

INSERT INTO performers (
    name
)

VALUES (
    "Anne Hathaway"
);

INSERT INTO performers (
    name
)

VALUES (
    "Christopher Nolan"
);

INSERT INTO top_cast (
    movie_id, 
    performer_id,
    role
)

VALUES (
    1,
    1,
    "Bruce Wayne"
);

INSERT INTO top_cast (
    movie_id, 
    performer_id,
    role
)

VALUES (
    1,
    2,
    "Alfred"
);

INSERT INTO top_cast (
    movie_id, 
    performer_id,
    role
)

VALUES (
    1,
    3,
    "Ra's Al Ghul"
);

INSERT INTO top_cast (
    movie_id, 
    performer_id,
    role
)

VALUES (
    1,
    4,
    "Rachel Dawes"
);

INSERT INTO top_cast (
    movie_id, 
    performer_id,
    role
)

VALUES (
    1,
    5,
    "Commissioner Gordon"
);

INSERT INTO top_cast (
    movie_id, 
    performer_id,
    role
)

VALUES (
    2,
    1,
    "Bruce Wayne"
);

INSERT INTO top_cast (
    movie_id, 
    performer_id,
    role
)

VALUES (
    2,
    6,
    "Joker"
);

INSERT INTO top_cast (
    movie_id, 
    performer_id,
    role
)

VALUES (
    2,
    7,
    "Harvey Dent"
);

INSERT INTO top_cast (
    movie_id, 
    performer_id,
    role
)

VALUES (
    2,
    2,
    "Alfred"
);

INSERT INTO top_cast (
    movie_id, 
    performer_id,
    role
)

VALUES (
    2,
    8,
    "Rachel Dawes"
);

INSERT INTO top_cast (
    movie_id, 
    performer_id,
    role
)

VALUES (
    3,
    1,
    "Bruce Wayne"
);

INSERT INTO top_cast (
    movie_id, 
    performer_id,
    role
)

VALUES (
    3,
    5,
    "Commissioner Gordon"
);

INSERT INTO top_cast (
    movie_id, 
    performer_id,
    role
)

VALUES (
    3,
    9,
    "Bane"
);

INSERT INTO top_cast (
    movie_id, 
    performer_id,
    role
)

VALUES (
    3,
    10,
    "John Blake"
);

INSERT INTO top_cast (
    movie_id, 
    performer_id,
    role
)

VALUES (
    3,
    11,
    "Selina Kyle"
);

-- Prints a header for the movies output
.print "Movies"
.print "======"
.print ""

-- The SQL statement for the movies output
-- TODO!

SELECT title, release_date, rating, performers.name
FROM movies
    INNER JOIN performers ON performers.id = movies.performer_id
GROUP BY title
ORDER BY release_date;

-- Prints a header for the cast output
.print ""
.print "Top Cast"
.print "========"
.print ""


-- The SQL statement for the cast output
-- TODO!

SELECT movies.title, performers.name, top_cast.role 
FROM top_cast
    INNER JOIN movies ON movies.id = top_cast.movie_id 
    INNER JOIN performers ON performers.id = top_cast.performer_id;