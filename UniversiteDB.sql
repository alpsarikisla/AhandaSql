CREATE DATABASE UniversiteDB
GO
USE UniversiteDB
GO
CREATE TABLE Fakulteler
(
	ID int IDENTITY(1,1),
	Isim nvarchar(150) NOT NULL,
	Dekan nvarchar(100),
	CONSTRAINT pk_fakulte PRIMARY KEY(ID)
)
GO
CREATE TABLE Bolumler
(
	ID int IDENTITY(100,1),
	Isim nvarchar(200) NOT NULL,
	Fakulte_ID int,
	CONSTRAINT pk_bolum PRIMARY KEY(ID),
	CONSTRAINT fk_bolumFakulte FOREIGN KEY(Fakulte_ID)
	REFERENCES Fakulteler(ID)
)
GO
CREATE TABLE Dersler
(
	Kod int IDENTITY(2000,1),
	Isim nvarchar(150) NOT NULL,
	Kredi tinyint,
	Saat tinyint,
	Bolum_ID int,
	CONSTRAINT pk_ders PRIMARY KEY(Kod),
	CONSTRAINT fk_dersBolum FOREIGN KEY(Bolum_ID)
	REFERENCES Bolumler(ID)
)
GO
CREATE TABLE Ogrenciler
(
	OkulNo nvarchar(11),
	Isim nvarchar(50) NOT NULL,
	Soyad nvarchar(50) NOT NULL,
	BabaAdi nvarchar(50),
	Bolum_ID int,
	CONSTRAINT pk_ogrenci PRIMARY KEY(OkulNo),
	CONSTRAINT fk_ogrenciBolum FOREIGN KEY(Bolum_ID)
	REFERENCES Bolumler(ID)
)
GO
CREATE TABLE AlinanDersler
(
	OgrenciNo nvarchar(11),
	DersKodu int,
	CONSTRAINT pk_AlinanDers PRIMARY KEY(OgrenciNo,DersKodu),
	CONSTRAINT fk_AlinanDersOgrenci FOREIGN KEY(OgrenciNo) REFERENCES Ogrenciler(OkulNo),
	CONSTRAINT fk_AlinanDersDers FOREIGN KEY(DersKodu) REFERENCES Dersler(Kod)
)

