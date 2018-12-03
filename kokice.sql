drop database if exists kokice;
create database kokice character set utf8 collate utf8_general_ci;
use kokice;

create table glumci (
sifra 			int not null primary key auto_increment,
ime 			varchar (50) not null,
prezime 		varchar (50) not null,
spol 			char(1) not null,
datumrodenja 	datetime not null
);

create table filmovi(
sifra int not null primary key auto_increment,
naziv varchar(70) not null,
zanr int not null,
godinaizdanja varchar(10) not null,
glumci int not null,
info varchar (250) not null
);

create table serije (
sifra 			int not null primary key auto_increment,
naziv 			varchar (50) not null,
zanr			int not null,
godinaizdanja  	varchar (10) not null,
brojsezona 		int not null,
glumci 			int not null,
info 			varchar(250) not null
);

create table zanr (
sifra 	int not null primary key auto_increment,
vrsta 	varchar(50) not null
);



alter table filmovi add foreign key (zanr) references zanr(sifra);
alter table serije add foreign key (zanr) references zanr(sifra);
alter table filmovi add foreign key (glumci) references glumci(sifra);
alter table serije add foreign key (glumci) references glumci(sifra);