SELECT * FROM Album;
SELECT * FROM Album ORDER BY year desc;
SELECT * FROM Band WHERE name LIKE 'The%';
SELECT * FROM Song ORDER BY title;
SELECT albumId FROM Album WHERE title LIKE 'Nevermind';
SELECT COUNT(musicianId) FROM Musician;
SELECT * FROM Album WHERE year = (SELECT MIN(year) FROM Album);
SELECT SUM(trackLength) FROM AlbumSong WHERE albumId = (SELECT albumId FROM Album WHERE title = "Rain Dogs"); 
SELECT title, year, name FROM Album INNER JOIN Band ON Album.bandId = Band.bandId;
SELECT Album.title AS Album, Song.title AS Song FROM Album JOIN AlbumSong ON Album.albumId = AlbumSong.albumId INNER JOIN Song ON AlbumSong.songId = Song.songId JOIN Band ON Band.bandId = Album.bandID WHERE Band.name = "Nirvana";
SELECT Band.name AS Band , Album.title AS Album FROM Band LEFT JOIN Album ON Band.bandId = Album.bandId;
SELECT Band.name AS Band , COUNT(Album.title) AS Albums FROM Band LEFT JOIN Album ON Band.bandId = Album.bandId GROUP BY Band.name;
SELECT Album.title AS Album , COUNT(AlbumSong.albumSongId) AS Tracks FROM Album JOIN AlbumSong ON Album.albumId = AlbumSong.albumId GROUP BY Album.title HAVING Tracks > 11;
SELECT Musician.firstName AS FirstName, Musician.lastName as LastName FROM Musician JOIN BandMember ON Musician.musicianId = BandMember.musicianId;
SELECT * FROM Musician WHERE 'Musician.musicianId' NOT IN (SELECT 'BandMember.musicianId' FROM BandMember);

