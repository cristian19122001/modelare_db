CREATE TABLE IF NOT EXISTS materie (
	id serial primary key not null,
	nume varchar(100) not null,
	descriere text not null,
	credite integer not null
);

CREATE TABLE IF NOT EXISTS profesor (
	id serial primary key not null,
	nume varchar(100) not null,
	varsta int not null,
	materie_predata varchar(100) not null
);

CREATE TABLE IF NOT EXISTS materie_predata (
	id serial primary key not null,
	materie_id integer not null,
	profesor_id integer not null,
	foreign key (materie_id) references materie (id),
	foreign key (profesor_id) references profesor(id)
);
