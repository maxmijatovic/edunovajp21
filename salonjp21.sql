drop database if exists salonjp21;
create database salonjp21 default character set utf8;
use salonjp21;

create table djelatnica(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    prezime varchar(50) not null,
    oib char(11),
    iban varchar(50)
);

create table posjeta(
    sifra int not null primary key auto_increment,
    termin datetime not null,
    usluga int not null,
    korisnik int not null,
    djelatnica int not null
);

create table korisnik(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    prezime varchar(50) not null,
    brojmobitela char(20) not null
);

create table usluga(
    sifra int not null primary key auto_increment,
    naziv varchar(50) not null,
    trajanje int,
    cijena decimal(18,2) not null
);

alter table posjeta add foreign key (usluga) references usluga(sifra);
alter table posjeta add foreign key (korisnik) references korisnik(sifra);
alter table posjeta add foreign key (djelatnica) references djelatnica(sifra);

#djelatnica

insert into djelatnica(sifra,ime,prezime,oib,iban) values
(null,'Tea','Horvat','97259651981','HR6336900042294897361'),
(null,'Ana','Anić','86265311904','HR1436970003647851297'),
(null,'Marija','Marić','29340273490','HR1457896300031456987');

#korisnik

insert into korisnik(sifra,ime,prezime,brojmobitela) values
(null,'Sonja','Kovačević','0996857563'),
(null,'Ivana','Ivanović','0996549857'),
(null,'Lucija','Horvatić','0996398742');

#usluga

insert into usluga(sifra,naziv,trajanje,cijena) values
(null,'depilacija',15,40),
(null,'manikura',25,50),
(null,'pedikura',30,55.50);

#posjeta

insert into posjeta(sifra,termin,usluga,korisnik,djelatnica) values
(null,'2019-12-21 10:00:00',1,3,2),
(null,'2019-11-28 13:00:00',2,2,3),
(null,'2019-11-30 15:30:00',3,1,1);


