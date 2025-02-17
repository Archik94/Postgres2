INSERT INTO genre(name) values
('Hard Rock'),
('Heavy Metal'),
('Glam Metal'),
('Ballad'),
('Instrumental');

INSERT INTO bands(name) values
('Red Hot Chili Peppers'),
('Megadeth'),
('Ария'),
('Green Day'),
('Bon Jovi'),
('Doro'),
('Мастер'),
('AC/DC');

INSERT INTO genreband values
(2, 1),
(2, 2),
(2, 3),
(1, 4),
(2, 6),
(2, 7),
(2, 8),
(5, 8),
(4, 2),
(4, 1),
(4, 3),
(4, 8),
(4, 7),
(1, 5);

INSERT INTO album(name, year_of) values
('Master of Puppets', 2018),
('Killing Is My Business', 2020),
('Герой песка', 2019),
('Good 2b alive', 2021),
('Have a Nice Day', 2005),
('Angels never die', 1992),
('Другой мир', 1996),
('Ещё один день', 2020);

INSERT INTO bandalbum values
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8);

INSERT INTO songs(name, album_id, duration) values
('Angel of Death', 8, 310),
('Дорога в никуда', 8, 296),
('Пепел на ветру', 7, 277),
('Bohemian Rhapsody', 7, 202),
('Bad Blood', 6, 250),
('All I Want', 6, 225),
('Have a nice day', 6, 229),
('Wildflower', 5, 254),
('LOL', 4, 243),
('Samurai', 4, 333),
('Герой асфальта', 3, 314),
('Ace Of Spades', 3, 357),
('Killing Is My Business…', 2, 186),
('Rattlehead', 2, 221),
('Battery', 1, 186),
('Stairway to Heaven', 2, 492);

INSERT INTO collection(name, year_of) values
('Heavy metal', 2018),
('I_am', 2020),
('Don_t', 2019),
('Care', 1999),
('Summer', 1943),
('Collection', 1999),
('Another', 2011),
('One', 2021);

INSERT INTO songcollection values
(5, 2),
(7, 2),
(9, 3),
(11, 4),
(12, 5),
(14, 6),
(14, 7),
(13, 7),
(12, 8),
(1, 8),
(2, 8);