drop database if exists frizerskisalonjp21;
create database frizerskisalonjp21;
use frizerskisalonjp21;

create table djelatnica(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    prezime varchar(50) not null,
    oib char(20),
    iban varchar(50)
);

create table posjeta(
    sifra int not null primary key auto_increment,
    usluga int not null,
    termin datetime not null,
    djelatnica int not null,
    korisnik int not null
);

create table usluga(
    sifra int not null primary key auto_increment,
    naziv varchar(50) not null,
    trajanje int,
    cijena decimal(18,2) not null
);

create table korisnik(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    prezime varchar(50) not null,
    brojmobitela char(20)
);    

alter table posjeta add foreign key (usluga) references usluga(sifra);
alter table posjeta add foreign key (djelatnica) references djelatnica(sifra);
alter table posjeta add foreign key (korisnik) references korisnik(sifra);

#select from * djelatnica;

#describe djelatnica;

insert into djelatnica(sifra,ime,prezime,oib,iban) values
(null,'Ivana','Horvat',35967418549,'HR1236495000587459632'),
(null,'Josipa','Horvatic',25478316946,'HR1456495000589632632'),
(null,'Marija','Maric',35584698549,'HR1236495000367419852');

#select from * usluga;

#describe usluga;

insert into usluga(sifra,naziv,trajanje,cijena) values
(null,'sisanje kratke kose',20,50),
(null,'sisanje musko',15,30),
(null,'pranje kose',10,20);

#select from * korisnik;

#describe korisnik;

insert into korisnik(sifra,ime,prezime,brojmobitela) values
(null,'Sanja','Mikic','0996857563'),
(null,'Ivan','Mirkovic','0918963545'),
(null,'Mirta','Knezevic','0952346976');

#select from * posjeta;

#describe posjeta;

insert into posjeta(sifra,usluga,termin,djelatnica,korisnik) values
(null,1,'2019-11-21 10:00:00',2,1),
(null,2,'2019-11-30 13:00:00',3,2),
(null,3,'2019-12-05 12:15:00',1,3);




