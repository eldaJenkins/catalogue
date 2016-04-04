CREATE TABLE Media
(
	title		TEXT		NOT NULL,
	author		INTEGER,
	publisher	INTEGER,
	isbn		TEXT,
	media_type	INTEGER		NOT NULL,
	volume		TEXT,
	pub_year	INTEGER,
	edition		TEXT,
	printing	TEXT
);

CREATE TABLE Authors
(
	name		TEXT		UNIQUE		NOT NULL
);

CREATE TABLE Publishers
(
	name		TEXT		UNIQUE		NOT NULL
);

CREATE TABLE Types
(
	type		TEXT		UNIQUE		NOT NULL
);

CREATE TABLE Tags
(
	name		TEXT		UNIQUE		NOT NULL
);

CREATE TABLE Images
(
	description	TEXT,
	filename	TEXT		NOT NULL
);
