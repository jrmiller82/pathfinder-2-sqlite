
CREATE TABLE armorgroup (
	grp_id INTEGER PRIMARY KEY,
  sources_id INTEGER NOT NULL,
  sources_pages TEXT NOT NULL,
	short_name TEXT NOT NULL UNIQUE,
  descr TEXT NOT NULL,
  FOREIGN KEY (sources_id) REFERENCES sources(sources_id)
);

CREATE TABLE armorcategory (
  armor_category_id INTEGER PRIMARY KEY,
  short_name TEXT NOT NULL UNIQUE
);

CREATE TABLE armor (
	armor_id INTEGER PRIMARY KEY,
	sources_id INTEGER NOT NULL,
	sources_pages TEXT,
	armor_category_id INTEGER NOT NULL,
	short_name TEXT NOT NULL,
  item_level INTEGER,
	price_text TEXT NOT NULL,
	price_gp FLOAT NOT NULL,
	ac_bonus INTEGER NOT NULL,
	dex_cap INTEGER,
	check_penalty INTEGER,
	speed_penalty INTEGER,
	strength INTEGER,
	bulk_id INTEGER NOT NULL,
	grp_id INTEGER,
	descr TEXT NOT NULL,
	FOREIGN KEY (bulk_id) REFERENCES bulk(bulk_id),
	FOREIGN KEY (grp_id) REFERENCES armorgroup(grp_id),
  FOREIGN KEY (sources_id) REFERENCES sources(sources_id)
);

CREATE TABLE armor_traits (
	id INTEGER PRIMARY KEY,
	armor_id INTEGER NOT NULL,
	traits_id INTEGER NOT NULL,
	FOREIGN KEY (armor_id) REFERENCES armor(armor_id),
	FOREIGN KEY (traits_id) REFERENCES traits(traits_id)
);


