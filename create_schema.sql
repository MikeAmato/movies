DROP TABLE IF EXISTS middle;
DROP TABLE IF EXISTS actors;
DROP TABLE IF EXISTS movies;
DROP TABLE IF EXISTS directors;

CREATE TABLE director(
  director_id serial PRIMARY KEY,
  first varchar(50) NOT NULL,
  last varchar(50) NOT NULL
);

CREATE TABLE movies(
  movies_id serial PRIMARY KEY,
  name varchar(50) NOT NULL,
  release_date date NOT NULL,
  director_id integer references director(director_id)
);

CREATE TABLE actors(
  actors_id serial PRIMARY KEY,
  first varchar(50) NOT NULL,
  last varchar(50) NOT NULL
);

CREATE TABLE middle(
middle_id serial PRIMARY KEY,
movies_id integer references movies(movies_id),
actors_id integer references actors(actors_id)
);

