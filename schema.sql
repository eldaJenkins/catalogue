CREATE TABLE Media
(
	id		INTEGER		PRIMARY KEY,
	title		TEXT(200)	NOT NULL,
	author		INTEGER(1000)	NULL,
	publisher	INTEGER(1000)	NULL,
	isbn		TEXT(20)	NULL,
	media_type	INTEGER(100)	NOT NULL,
	volume		TEXT(100)	NULL,
	pub_year	INTEGER(4)	NULL,
	edition		TEXT(100)	NULL,
	printing	TEXT(100)	NULL,

	FOREIGN KEY (author) REFERENCES Authors(author_name),
	FOREIGN KEY (publisher) REFERENCES Publishers(publisher_name),
	FOREIGN KEY (media_type) REFERENCES Types(type)
);

CREATE TABLE Authors
(
	author_name	TEXT(200)	PRIMARY KEY	NOT NULL,
);

CREATE TABLE Publishers
(
	publisher_name	TEXT(200)	PRIMARY KEY	NOT NULL
);

CREATE TABLE Types
(
	type		TEXT(200)	PRIMARY KEY	NOT NULL
);

CREATE TABLE Tags
(
	tag_name	TEXT(1000)	PRIMARY KEY	NOT NULL
);

CREATE TABLE Images
(
	image_desc	TEXT(1000)	NULL,
	image_filename	TEXT(1000)	PRIMARY KEY	NOT NULL
);
