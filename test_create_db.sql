CREATE TABLE lessons (
	id serial NOT NULL,
	name character varying(255) NOT NULL	
	CONSTRAINT id_pkey PRIMARY KEY (id)
)

CREATE TABLE lessons_time (
	id serial NOT NULL,
	start_time character varying(4) NOT NULL,
	end_time character varying(4) NOT NULL
	CONSTRAINT id_pkey PRIMARY KEY (id)
)

CREATE TABLE groups (
	id serial NOT NULL,
	name character varying(255) NOT NULL	
	CONSTRAINT id_pkey PRIMARY KEY (id)
)

CREATE TABLE shedule (
	id serial NOT NULL,
	lesson_id integer NOT NULL,
	group_id integer NOT NULL
	day smallint NOT NULL
	CONSTRAINT id_pkey PRIMARY KEY (id)
)

CREATE TABLE admins (
	id serial NOT NULL,
	login character varying(255) NOT NULL,
	password character varying(20) NOT NULL
)


