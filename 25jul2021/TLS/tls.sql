CREATE DATABASE tls;

USE tls;

CREATE TABLE roles (
	id int not null auto_increment,
	title varchar(25) not null,

	primary key(id)
);

CREATE TABLE users (
	id int not null auto_increment,
	fullname varchar(25) not null,
	email varchar(50) not null,
	gender varchar(6) not null,
	phone varchar(14),
	image varchar(600) default "avatar_default.jpeg",
	address varchar(900) not null,
	nationality varchar(50) not null,
	role_id int not null,
	password varchar(900) not null,
	regDate timestamp default current_timestamp(),

	primary key(id),
	constraint foreign key (role_id) references roles(id) on delete cascade on update cascade
);

CREATE TABLE service_provider (
	id int not null auto_increment,
	user_id int not null,
	name varchar(255) not null,
	tinNo varchar(50) not null,
	brela varchar(255) not null,
	rating varchar(255) not null,

	primary key(id),
	constraint foreign key (user_id) references users(id) on delete cascade on update cascade
);

CREATE TABLE cargo (
	id int not null auto_increment,
	customer_id int not null,
	weight int(255) not null,
	length int(50) not null,
	type varchar(255) not null,
	serviceStart date not null,
	serviceEnd date not null,
	description varchar(255),
	origin varchar(255) not null,
	destination varchar(255) not null,
	status enum('request', 'panding'),

	primary key(id),
	constraint foreign key (customer_id) references users(id) on delete cascade on update cascade
);


CREATE TABLE cargo_details (
	id int not null auto_increment,
	cargo_id int not null,
	provider_id int not null,
	status enum('request', 'panding', 'agreed', 'denied'),
	created date not null,

	primary key(id),
	constraint foreign key (cargo_id) references cargo(id) on delete cascade on update cascade,
	constraint foreign key (provider_id) references service_provider(id) on delete cascade on update cascade
);


CREATE TABLE contract (
	id int not null auto_increment,
	details_id int not null,
	remarks enum('agreed', 'terminated'),
	onDate date not null,

	primary key(id),
	constraint foreign key (details_id) references cargo_details(id) on delete cascade on update cascade
);