CREATE USER owner WITH password 'd41d8cd98f00b204e9800998ecf8427e';

CREATE TABLE lessons (
	id serial NOT NULL,
	name character varying(255) NOT NULL,	
	CONSTRAINT id_lessons_pkey PRIMARY KEY (id)
);


CREATE TABLE lessons_time (
	id serial NOT NULL,
	start_time character varying(4) NOT NULL,
	end_time character varying(4) NOT NULL,
	CONSTRAINT id_time_pkey PRIMARY KEY (id)
);

CREATE TABLE groups (
	id serial NOT NULL,
	name character varying(255) NOT NULL,	
	CONSTRAINT id_groups_pkey PRIMARY KEY (id)
);

CREATE TABLE shedule (
	id serial NOT NULL,
	lesson_id integer NOT NULL,
	group_id integer NOT NULL,
	day smallint NOT NULL,
	shedule_period smallint NOT NULL,
	CONSTRAINT id_shedule_pkey PRIMARY KEY (id)
);

CREATE TABLE admins (
	id serial NOT NULL,
	login character varying(255) NOT NULL,
	password character varying(20) NOT NULL,
	CONSTRAINT id_admins_pkey PRIMARY KEY (id)
);

CREATE TABLE shedule_periods (
	id serial NOT NULL,
	start_date timestamp,
	end_date timestamp,
	CONSTRAINT id_shedule_periods_pkey PRIMARY KEY (id)
);

GRANT ALL ON lessons TO owner;
GRANT ALL ON lessons_time TO owner;
GRANT ALL ON groups TO owner;
GRANT ALL ON shedule TO owner;
GRANT ALL ON admins TO owner;
GRANT ALL ON shedule_periods TO owner;


