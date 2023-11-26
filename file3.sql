-- ONE TO ONE 

CREATE TABLE IF NOT EXISTS users (
	id serial primary key not null,
	name varchar (50) not null,
	email varchar (50) null,
	phone_number varchar(20) null
);

CREATE TABLE IF NOT EXISTS address (
	id serial primary key not null, -- coloana id joaca un rol de PK si FK ca o cheie primara este by defaul unica
	address varchar (200) not null,
	is_valid bool not null,
	foreign key (id) references users(id)
);

CREATE TABLE IF NOT EXISTS address (
	id serial primary key not null,
	users_id integer not null unique,
	address varchar (200) not null,
	is_valid bool not null,
	foreign key (id) references users(id)
);

CREATE TABLE IF NOT EXISTS books (
	id serial primary key not null,
	title varchar(100) not null,
	isbn varchar (10) not null,
	published_date date not null,
	price decimal null
);

CREATE TABLE IF NOT EXISTS users_books (
	id serial primary key not null,
	user_id integer not null,
	book_id integer not null,
	review text not null,
	review_date date not null,
	foreign key (user_id) references users (id),
	foreign key (book_id) references books(id)
);

