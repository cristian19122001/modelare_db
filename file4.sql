CREATE TABLE IF NOT EXISTS country (
	id serial primary key not null,
	indicativ char(3) not null,
	geometry varchar(100) not null,
	area decimal not null
);

create table if not exists county (
	id serial primary key not null,
	country_id integer not null,
	area decimal not null,
	siruta integer not null,
	geometry varchar(100) not null default 'POLYGON',
	foreign key (country_id) references country(id)
);

create table if not exists universitate (
	id serial primary key not null,
	nume varchar(200) not null,
	adresa text not null,
	numar_telefon integer not null
);

create table if not exists facultate (
	id serial primary key not null,
	universitate_id integer not null,
	nume varchar(200) not null,
	numar_telefon integer not null,
	foreign key (universitate_id) references universitate(id)
);