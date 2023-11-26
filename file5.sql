CREATE TABLE IF NOT EXISTS accounts (
	id integer primary key NOT NULL,
	username VARCHAR(50) NOT NULL,
	password VARCHAR(50) NOT NULL,
	email VARCHAR(50) NOT NULL
);


CREATE TABLE IF NOT EXISTS salutare (
	id integer primary key NOT NULL,
	inaltime FLOAT NOT NULL,
	greutate FLOAT NOT NULL,
	culoare_piele VARCHAR(50),
	tara_origine VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS bubuiala (
	id integer primary key not null,
	skin varchar(200) not null,
	rarity varchar(100) not null, 
	rata_drop float not null
);


CREATE TABLE IF NOT EXISTS roles(
	id integer primary key not null,
	name varchar(250) unique not null
);

CREATE TABLE IF NOT EXISTS teacher_roles(
	id serial primary key not null,
	name varchar(250) unique not null
);
/*
CREATE TABLE IF NOT EXISTS account_roles (
	id serial not null,
	name varchar(50) not null unique,
	creation_date date not null,
	primary key (id)
);
*/
CREATE TABLE IF NOT EXISTS account_roles (
	id serial primary key not null,
	name varchar(50) not null unique,
	creation_date date not null
);

CREATE TABLE IF NOT EXISTS account_roles2 (
	id serial not null,
	name varchar(50) not null unique,
	creation_date date not null,
	primary key (id,name)
);

CREATE TABLE IF NOT EXISTS account_roles3 (
	id integer not null,
	name varchar(50) not null,
	creation_date date not null,
	primary key (id,name)
);

/*ASSIGNEMT
1. doua tabele cu cheie primara simpla
2. doua tabele cu cheie prima compusa
3. fiecare tabel sa aiba o constrangere de UNIQUE pe una din coloane 
4. minim 4 coloane per tabel 
5 sa utilizati tipourile INTEGER, SERIAL, VARCHAR, DATE, CHAR SI SMALLINT
6. cheia primara se seteaza dupa definirea coloanelor
*/

CREATE TABLE IF NOT EXISTS awp_drop (
	id integer not null unique,
	name varchar(50) not null,
	exterior varchar(50) not null,
	drop_rate float not null,
	ziua_drop date not null,
	primary key (id, name)
);

CREATE TABLE IF NOT EXISTS solo_leveling (
	id serial not null,
	nume_capitol varchar(200) not null unique,
	prescurtare_capitol smallint not null,
	data_lansare date not null,
	primary key (id,nume_capitol)
);

CREATE TABLE IF NOT EXISTS scoala (
	id integer not null,
	nume text not null unique,
	numar_elevi integer not null,
	numar_sali integer not null,
	primary key (id)
);

CREATE TABLE IF NOT EXISTS pericol (
	id integer NOT NULL,
	inaltime FLOAT NOT NULL,
	greutate FLOAT NOT NULL,
	culoare_piele char (20) not null,
	tara_origine char (20) not null,
	primary key (id)
);



