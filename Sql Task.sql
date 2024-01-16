CREATE DATABASE IMDB;
USE IMDB;

CREATE TABLE movie (
	movie_name VARCHAR(50) PRIMARY KEY NOT NULL,
    movie_link VARCHAR(500) NOT NULL, 
    genre VARCHAR(50) NOT NULL, 
    artist_name VARCHAR(50) NOT NULL
);

INSERT INTO movie (movie_name,movie_link,genre,artist_name) 
	VALUES 
    ( 'DoLittle','https://en.wikipedia.org/wiki/Dolittle_(film)#/media/File:Dolittle_(2020_film_poster).png' , 'fantacy' , 'Robert Downey Jr'),
    ('Mission impossible - Rogue Nation' , 'https://en.wikipedia.org/wiki/Mission:_Impossible_%E2%80%93_Rogue_Nation#/media/File:Mission_Impossible_Rogue_Nation_poster.jpg' , 'Action, Thriller' , 'Tom Cruise'),
    ('Interstellar' , 'https://en.wikipedia.org/wiki/Interstellar_(film)#/media/File:Interstellar_film_poster.jpg','Science fiction','Matthew McConaughey'),
    ('Jack Reacher','https://en.wikipedia.org/wiki/Jack_Reacher_(film)#/media/File:Jack_Reacher_poster.jpg','Thriller Action','Tom Cruise'),
    ('Iron Man','https://en.wikipedia.org/wiki/Iron_Man_(2008_film)#/media/File:Iron_Man_(2008_film)_poster.jpg','Action','Robert Downey Jr');

 CREATE TABLE artists(
 movie_name VARCHAR(50) PRIMARY KEY NOT NULL,
 artist_name VARCHAR(100) NOT NULL,
 skills VARCHAR(50) NOT NULL,
 roles_in_movies VARCHAR(50) NOT NULL
);

INSERT INTO artists (movie_name , artist_name, skills, roles_in_movies) 
	VALUES
    ('DoLittle','Robert Downey Jr','Versatility','Doctor Dolittle'),
    ('Mission impossible - Rogue Nation','Tom Cruise','Stunt skills','Ethan'),
    ('Interstellar','Matthew McConaughey','Excellent role player','Cooper'),
    ('Jack Reacher','Tom Cruise','Aviation skills','Jack Reacher'), 
    ('Iron man','Robert Downey Jr','Excellent performer','Tony Stark/Iron Man');
    
CREATE TABLE reviews (
	user_name VARCHAR(50) NOT NULL,
    review VARCHAR(200) NOT NULL,
    movie_name VARCHAR(50) PRIMARY KEY NOT NULL
);

INSERT INTO reviews 
	VALUES 
    ('movie_liker','stunning visuals and a powerful performance from the lead actor','Iron Man'),
    ('iam_reviewer','The film is a worthwhile watch','Mission impossible – Rogue Nation'),
    ('hi_hello','On a scale from zero to five, I give this film a five','Jack Reacher'),
    ('123@movies','powerful scenes','DoLittle'),
    ('movie_watcher','arouse curiosity','Interstellar');
    
SELECT
	movie.movie_name,
    movie.genre,
    movie.movie_link,
    artists.artist_name,
    artists.skills,
    artists.roles_in_movies
FROM
	movie
JOIN
	artists
ON movie.movie_name = artists.movie_name;



    

    

    



