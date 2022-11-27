CREATE DATABASE HaciMarket_DB
GO
use HaciMarket_DB
GO
CREATE TABLE Kategoriler
(
	ID int IDENTITY(1,1),
	Isim nvarchar(50) NOT NULL,
	CONSTRAINT pk_kategori PRIMARY KEY(ID)
)
GO
CREATE TABLE Urunler
(
	ID int IDENTITY(1,1),
	Kategori_ID int,
	Isim nvarchar(50) NOT NULL,
	Fiyat decimal(18,2),
	CONSTRAINT pk_urun PRIMARY KEY(ID),
	CONSTRAINT fk_urunKategori FOREIGN KEY(Kategori_ID)
	REFERENCES Kategoriler(ID)
)