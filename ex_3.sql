CREATE TABLE IF NOT EXISTS tara (
	id serial primary key not null,
	nume varchar(100) not null,
	suprafata decimal not null
);

CREATE TABLE IF NOT EXISTS structura_reg (
	id serial primary key not null,
	tip varchar(100) not null
);

CREATE TABLE IF NOT EXISTS vulnerabilitate (
	id serial primary key not null,
	tip varchar(100) not null
);

CREATE TABLE IF NOT EXISTS marime_reg (
	id serial primary key not null,
	marime decimal not null
);

CREATE TABLE IF NOT EXISTS regiune_geografica (
    id serial primary key not null,
    nume varchar(100) not null,
    tara_id integer not null,
    structura_id integer not null,
    vulnerabilitate_id integer not null,
    marime_reg_id integer not null,
    foreign key (tara_id) references tara(id),
    foreign key (structura_id) references structura_reg(id),
    foreign key (vulnerabilitate_id) references vulnerabilitate(id),
    foreign key (marime_reg_id) references marime_reg(id)
);
CREATE TABLE IF NOT EXISTS uat (
	id serial primary key not null,
	nume varchar(100) not null,
	regiunea_geografica_id integer not null,
	foreign key (regiunea_geografica_id) references regiune_geografica(id)
);