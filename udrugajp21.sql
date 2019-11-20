drop database if exists udrugajp21;
create database udrugajp21 default character  set utf8;
use udrugajp21;

create table osoba(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    prezime varchar(50) not null,
    oib char(20)
);

create table sticenik(
    sifra int not null primary key auto_increment,
    naziv varchar(50) not null,
    vrsta varchar(50),
    osoba int not null,
    prostor int not null
);

create table prostor(
    sifra int not null primary key auto_increment,
    naziv varchar(50) not null,
    velicina decimal(18,2) not null,
    oblik varchar(50)
);

alter table sticenik add foreign key (osoba) references osoba(sifra);
alter table sticenik add foreign key (prostor) references prostor(sifra);

#osoba

insert into osoba(sifra,ime,prezime,oib) values 
(null,'Tihana','Ivanović','71093604542'),
(null,'Iva','Ivić','22596510811'),
(null,'Marko','MArić','33764073986');

#prostor

insert into prostor(sifra,naziv,velicina,oblik) values
(null,'P1',3.3,'kocka'),
(null,'P2',6.2,'pravokutnik'),
(null,'P3',4,'krug');

#sticenik

insert into sticenik(sifra,naziv,vrsta,osoba,prostor) values
(null,'King','pas',1,3),
(null,'Lilly','mačka',2,2),
(null,'Ted','pas',3,1),
(null,'Freddy','mačak',1,2);


#describe osoba;

#select * from osoba;

#update osoba set prezime='Marić' where sifra=3;

#select * from sticenik;

#delete from sticenik where sifra=3;