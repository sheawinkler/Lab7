SELECT * FROM Album;
SELECT * FROM Album ORDER BY year desc;
SELECT * FROM Band WHERE name LIKE 'The%';
SELECT * FROM Song ORDER BY title;
SELECT albumId FROM Album WHERE title LIKE 'Nevermind';
SELECT COUNT(musicianId) FROM Musician;
SELECT * FROM Album WHERE year = (SELECT MIN(year) FROM Album);
SELECT SUM(trackLength) FROM AlbumSong WHERE albumId = (SELECT albumId FROM Album WHERE title = "Rain Dogs"); /* doesn't use album name */
SELECT title, year, name FROM Album INNER JOIN Band ON Album.bandId = Band.bandId;
SELECT Album.title AS Album, Song.title AS Song FROM Album JOIN AlbumSong ON Album.albumId = AlbumSong.albumId INNER JOIN Song ON AlbumSong.songId = Song.songId JOIN Band ON Band.bandId = Album.bandID WHERE Band.name = "Nirvana";
