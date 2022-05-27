CREATE TABLE IF NOT EXISTS Artists (
    id SERIAL PRIMARY KEY,
    artists_name VARCHAR(40) NOT NULL
);


CREATE TABLE IF NOT EXISTS Albums (
    id SERIAL PRIMARY KEY,
	albums_name VARCHAR(60) NOT NULL,
	Creation INTEGER NOT NULL
);


CREATE TABLE IF NOT EXISTS Tracks (
	id SERIAL PRIMARY KEY,
	Albumid INTEGER REFERENCES Albums(id),
	tracks_name VARCHAR(40) NOT NULL,
	Length_track INTEGER NOT NULL
);


CREATE TABLE IF NOT EXISTS Genres (
	id SERIAL PRIMARY KEY,
	genres_name VARCHAR(40) NOT NULL unique
);


CREATE TABLE IF NOT EXISTS Artists_genre(
	id SERIAL PRIMARY KEY,
	artist_id INTEGER NOT NULL REFERENCES Artists(id),
	genre_id INTEGER NOT NULL REFERENCES Genres(id)
);

CREATE TABLE IF NOT EXISTS Artists_album(
	id SERIAL PRIMARY KEY,
	artist_id INTEGER NOT NULL REFERENCES Artists(id),
	album_id INTEGER NOT NULL REFERENCES Albums(id)
);

CREATE TABLE IF NOT EXISTS Collections(
	id SERIAL PRIMARY KEY,
	collections_name VARCHAR(60) NOT NULL,
	Release_date INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS Collection_track_album(
	id SERIAL PRIMARY KEY,
	collection_id INTEGER NOT NULL REFERENCES Collections(id),
	track_id INTEGER NOT NULL REFERENCES Tracks(id)
);