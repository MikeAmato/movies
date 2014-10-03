SELECT name FROM movies WHERE director_id = 1; --Finds all of Steven Spielbergs movies

SELECT movies.name FROM movies INNER JOIN middle ON movies.movies_id = middle.movies_id INNER 
JOIN actors ON middle.actors_id = actors.actors_id WHERE middle.actors_id = 1;


SELECT movies.name FROM movies INNER JOIN director ON movies.director_id = director.director_id 
INNER JOIN middle ON movies.movies_id = middle.movies_id INNER 
JOIN actors ON middle.actors_id = actors.actors_id WHERE middle.actors_id = 1;
 

SELECT actors.first, actors.last FROM actors INNER JOIN middle ON actors.actors_id = middle.actors_id ,
INNER JOIN movies ON middle.movies_id = movies.movies_id WHERE movies.movies_id = 6;