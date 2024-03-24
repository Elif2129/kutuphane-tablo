create database school_library
use school_library
create table uyeler(
UyeNo int not null identity(1,1) Primary Key,
UyeAdi nvarchar(50) not null,
UyeSoyadi nvarchar(50) not null,
Cinsiyet nvarchar(5),
Telefon int,
Eposta nvarchar(20),
);

create table adresler(
AdresNo int not null Primary Key,
Sehir nvarchar(50) not null,
Mahalle nvarchar(50) not null,
BinaNo int,
Cadde nvarchar(100),
Ulke nvarchar(30),
PostaKodu int
constraint adresno_pk foreign key (adresno) references adresler([adresno]))
);


create table KUTUPHANE(
KütüphaneNo int not null Primary Key,
KutuphaneIsmi nvarchar(50) not null,
adresno int,
telefonno int,
Acýklama nvarchar(50)
);


Create table kitaplar(
kitapno int not null primary key,
Sayfasayisi int 
Kitapadi nvarchar(100) not null,
ISBN int not null identity (1,1) Primary key,
Yayintarihi nvarchar (70),
Yazar nvarchar(50) not null,
yazarno int
kategorino int
miktar smallmoney not null
constraint yazarno_fk foreign key (yazarno) references yazarlar ([yazarno]),
constraint kategorino_fk foreign key (kategorino) references kategori([kategorino]),
);



Create table kategoriler(
Kategorino int not null identity (1,1) primary key
Kategoriadi nvarchar (90) not null,
constraint kitappno_fk foreign key (kitapno) references kitaplar ([kitapno]),
    constraint kategorino_fk foreign key (kategorino) references kategori([kategorino]),
);

Create table yazarlar(
Yazarno int not null identity (1,1) Primary key
Yazaradi nvarchar (90) not null
Yazarsoyadi nvarchar(150) not null
constraint kitapno_fk foreign key (kitapno) references kitaplar ([kitapno]),
    constraint yazarno_fk foreign key (yazarno) references yazarlar([yazarno]),


CREATE TABLE EMANET(
emanetNo int  identity(1,1) not null,
emanetTarihi datetime,
teslimTarihi datetime,
kitapno int
uyeno int 
miktar int
constraint kitapno_fk foreign key (kitapno) references kitaplar ([kitapno]),
constraint uyeno_fk foreign key (uyeno) references uyeler([uyeno]),
);
create table emanetgecmis (
    emanet_no int,
    kitap_no int,
    uye_no int,
    teslim_tarihi date,
    gecikme_bedeli decimal(10, 3),
    constraint emanetno_fk foreign key (emanetno) references emanetkitaplar ([emanetno]),
    constraint kitapno_fk foreign key (kitapno) references kitaplar ([kitapno]),
    constraint uyeno_fk foreign key (uyeno) references uyeler([uyeno]),

SELECT * FROM uyeler;
SELECT * FROM adresler;
SELECT * FROM KUTUPHANE;
SELECT * FROM kitaplar;
SELECT * FROM emanetgecmis;
SELECT * FROM yazarlar;
SELECT * FROM kategoriler;
SELECT * FROM kitaplar;
SELECT * FROM EMANET;