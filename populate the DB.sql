DROP TABLE IF EXISTS movies;
DROP TABLE IF EXISTS directors;
DROP TABLE IF EXISTS middle;
DROP TABLE IF EXISTS actors;


INSERT INTO directors (id, first, last) VALUES 
 (1, 'Steven', 'Spielberg'),
 (2, 'J.J.' , 'Abrams'),
 (3, 'Kenneth', 'Branagh'),
 (4, 'Chris', 'Columbus'),
 (5, 'Joss', 'Whedon');



INSERT INTO movies (id, name, released, directors_id) VALUES
 (1, 'Indiana Jones and the Last Crusade', '1989-5-24', 1),
 (2, 'Indiana Jones and the Temple of Doom', '1984-5-23', 1),
 (3, 'Jurassic Park', '1993-6-11', 1),
 (4, 'The Avengers', '2012-5-4', 5),
 (5, 'The Chamber of Secrets', '2002-11-15', 4),
 (6, 'Star Trek into Darkness', '2013-5-16', 2),
 (7, 'Iron Man 2', '2010-5-7', 3);


INSERT INTO actors (id, first, last) VALUES
 (1, 'Harrison', 'Ford'),
 (2, 'Robert', 'Downey Jr.'),
 (3, 'Samuel l.', 'Jackson'),
 (4, 'Daniel', 'Radcliffe'),
 (5, 'Chris', 'Pine');


INSERT INTO middle (id, movies_id, actors_id) VALUES
 (1, 1, 1),
 (2, 2, 1),
 (3, 7, 2),
 (4, 3, 3),
 (5, 4, 2),
 (6, 5, 4),
 (7, 6, 5);
