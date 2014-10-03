DROP TABLE IF EXISTS middle;
DROP TABLE IF EXISTS directors;
DROP TABLE IF EXISTS movies;
DROP TABLE IF EXISTS actors;


CREATE TABLE director(
  director_id serial PRIMARY KEY,
  first varchar(50) NOT NULL,
  last varchar(50) NOT NULL
);

CREATE TABLE movies(
  movies_id serial PRIMARY KEY,
  name varchar(50) NOT NULL,
  release_date date NOT NULL,
  director_id int8 references director(director_id)
);

CREATE TABLE actors(
  actors_id serial PRIMARY KEY,
  first varchar(50) NOT NULL,
  last varchar(50) NOT NULL
);

CREATE TABLE middle(
middle_id serial PRIMARY KEY,
movies_id int8 references movies(movies_id),
actors_id int8 references actors(actors_id)
);

