DROP TABLE IF EXISTS receipts;
DROP TABLE IF EXISTS stores;

CREATE TABLE director (
  id serial PRIMARY KEY,
  first varchar(50) NOT NULL,
  last varchar(50) NOT NULL
);

CREATE TABLE movies (
  id serial PRIMARY KEY,
  name varchar(50) NOT NULL,
  director_id int8 references director(id),
);

CREATE TABLE middle (
id serial PRIMARY KEY,
movies_id int8 references movies(id),
actors_id int8 references actors(id)
);

CREATE TABLE actors (
  id serial PRIMARY KEY,
  first varchar(50) NOT NULL,
  last varchar(50) NOT NULL
);