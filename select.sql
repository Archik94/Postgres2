--название и год выхода альбомов, вышедших в 2018 году
SELECT name AS album_name, year_of AS release_year FROM album
WHERE year_of = 2018;

--название и продолжительность самого длительного трека
SELECT name AS song_name, duration AS song_length FROM songs
ORDER BY duration DESC 
LIMIT 1;

--исправленный (название и продолжительность самого длительного трека)
SELECT name, duration FROM songs  
WHERE duration  = (SELECT MAX(duration) FROM songs);

--название треков, продолжительность которых не менее 3,5 минуты
SELECT name AS song_name FROM songs
WHERE duration >= 3.5*60;

--названия сборников, вышедших в период с 2018 по 2020 год включительно
SELECT name AS collection_name, year_of AS release_year FROM collection
WHERE year_of BETWEEN 2018 AND 2020;

--исполнители, чье имя состоит из 1 слова
SELECT name AS band_name FROM bands
WHERE name NOT LIKE '% %';

--название треков, которые содержат слово "мой"/"my"
SELECT name FROM songs
WHERE name ILIKE 'my %' OR name ILIKE '% my' OR name ILIKE '% my %' OR name = 'my'
OR name ILIKE 'мой %' OR name ILIKE '% мой' OR name ILIKE '% мой %' OR name = 'мой';

--3 задание
--количество исполнителей в каждом жанре
SELECT g.name, count(m.name)
FROM genre as g
LEFT JOIN genreband AS gm ON g.id = gm.genre_id
LEFT JOIN bands AS m ON gm.band_id = m.id
GROUP BY g.name
ORDER BY count(m.id) desc
;
--количество треков, вошедших в альбомы 2019–2020 годов
SELECT t.name, a.year_of
FROM album AS a
LEFT JOIN songs AS t ON t.album_id = a.id
WHERE (a.year_of >= 2019) AND  (a.year_of <= 2020);

--cредняя продолжительность треков по каждому альбому
SELECT a.name, AVG(t.duration)
FROM album AS a
LEFT JOIN songs AS t ON t.album_id = a.id
GROUP BY a.name
ORDER BY AVG(t.duration);

--все исполнители, которые не выпустили альбомы в 2020 году
SELECT DISTINCT m.name
FROM bands as m
WHERE m.name NOT IN (
    SELECT DISTINCT m.name
    FROM bands as m
    LEFT JOIN bandalbum AS ma ON m.id = ma.band_id
    LEFT JOIN album as a ON a.id = ma.album_id
    WHERE a.year_of = 2020)
ORDER BY m.name;

--названия сборников, в которых присутствует конкретный исполнитель (выберите его сами-AC/DC)
SELECT DISTINCT c.name
FROM collection AS c
LEFT JOIN collection AS ct ON c.id = collection_id
LEFT JOIN songs AS t ON t.id = ct.songs_id
LEFT JOIN album AS a ON a.id = t.album_id 
LEFT JOIN bandalbum AS ma ON ma.album_id = a.id
LEFT JOIN bands AS m ON m.id = ma.band_id
WHERE m.name LIKE '%%AC/DC%%'
ORDER BY c.name;
