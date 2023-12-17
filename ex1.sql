CREATE TABLE IF NOT EXISTS adresa (
    id serial primary key not null,
    strada varchar(200) not null,
    numarul char(5) not null,
);

CREATE TABLE IF NOT EXISTS autori (
    id serial primary key not null,
    nume varchar(100) not null,
    sexul char(1) not null,
    foreign key (adresa_id) references adresa(id)
);

CREATE TABLE IF NOT EXISTS carte (
    id serial primary key not null,
	autori_id integer not null,
    anul_publicarii char(5) not null,
    tipul_cartii varchar(30) not null,
    foreign key (autori_id) references autori(id)
);

CREATE TABLE IF NOT EXISTS review (
    id serial primary key not null,
    tip varchar(200) not null,
	nota char (2)not null,
    foreign key (autori_id) references autori(id)
);
