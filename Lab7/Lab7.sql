SELECT * FROM Album;
SELECT * FROM Album ORDER BY year desc;
SELECT * FROM Band WHERE name LIKE 'The%';
SELECT * FROM Song ORDER BY title;
SELECT albumId FROM Album WHERE title LIKE 'Nevermind';
SELECT COUNT(musicianId) FROM Musician;
SELECT * FROM Album ORDER BY year LIMIT 1; /* Not exact to instructions */
SELECT SUM(trackLength) FROM AlbumSong WHERE albumId = 5; /* doesn't use album name */
SELECT title, year, name FROM Album INNER JOIN Band ON Album.bandId = Band.bandId;