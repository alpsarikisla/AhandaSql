CREATE DATABASE Kitaplik_DB
GO
USE Kitaplik_DB
GO
CREATE TABLE Kategoriler
(
	ID int IDENTITY(1,1),
	Isim nvarchar(50) NOT NULL,
	CONSTRAINT pk_Kategori PRIMARY KEY(ID)
)
GO
INSERT INTO Kategoriler(Isim) VALUES('Korku - Gerilim')
INSERT INTO Kategoriler(Isim) VALUES('Tarih')
INSERT INTO Kategoriler(Isim) VALUES('Fantastik')
INSERT INTO Kategoriler(Isim) VALUES('Bilim Kurgu')
GO
CREATE TABLE Turler
(
	ID int IDENTITY(1,1),
	Isim nvarchar(50) NOT NULL,
	CONSTRAINT pk_tur PRIMARY KEY(ID)
)
GO
INSERT INTO Turler(Isim) VALUES('Roman')
INSERT INTO Turler(Isim) VALUES('Hikaye')
INSERT INTO Turler(Isim) VALUES('Biyografi')
INSERT INTO Turler(Isim) VALUES('Þiir')
INSERT INTO Turler(Isim) VALUES('Rehber')
GO
CREATE TABLE Yazarlar
(
	ID int IDENTITY(1,1),
	Isim nvarchar(50) NOT NULL,
	Soyisim nvarchar(50),
	CONSTRAINT pk_yazar PRIMARY KEY(ID)
)
GO
INSERT INTO Yazarlar(Isim, Soyisim)
VALUES('Jack','London')
INSERT INTO Yazarlar(Isim, Soyisim)
VALUES('Dan','Brown')
INSERT INTO Yazarlar(Isim, Soyisim)
VALUES('Alexandre','Dumas')
GO
CREATE TABLE Sehirler
(
	ID int IDENTITY(1,1),
	Isim nvarchar(50) NOT NULL,
	CONSTRAINT pk_Sehir PRIMARY KEY(ID)
)
GO
CREATE TABLE Ilceler
(
	ID int IDENTITY(1,1),
	Sehir_ID int,
	Isim nvarchar(50) NOT NULL,
	CONSTRAINT pk_Ilce PRIMARY KEY(ID),
	CONSTRAINT fk_ilceSehir FOREIGN KEY(Sehir_ID)
	REFERENCES Sehirler(ID)
)
CREATE TABLE YayinEvleri
(
	ID int IDENTITY(1,1),
	Sehir_ID int,
	Ilce_ID int,
	Isim nvarchar(50) NOT NULL,
	Telefon nvarchar(11),
	YetkiliAdi nvarchar(100),
	CONSTRAINT pk_YayinEvi PRIMARY KEY(ID),
	CONSTRAINT fk_YayineviSehir FOREIGN KEY(Sehir_ID)
	REFERENCES Sehirler(ID),
	CONSTRAINT fk_yayineviIlce FOREIGN KEY(Ilce_ID)
	REFERENCES Ilceler(ID)
)
GO
INSERT INTO YayinEvleri(Isim, Telefon, YetkiliAdi)
VALUES('Metis', '0212XXXXXXX', 'Hacý Mustafa Sarýkatipoðlu')
GO

CREATE TABLE Kitaplar
(
	ID int IDENTITY(1,1),
	Yazar_ID int,
	Tur_ID int,
	YayinEvi_ID int,
	Kategori_ID int,
	Isim nvarchar(75) NOT NULL,
	SayfaSayisi smallint,
	BasimYili nvarchar(4),
	BaskiSayisi tinyint,
	CONSTRAINT pk_Kitap PRIMARY KEY(ID),
	CONSTRAINT fk_kitapYazar FOREIGN KEY(Yazar_ID)
	REFERENCES Yazarlar(ID),
	CONSTRAINT fk_KitapTur FOREIGN KEY(Tur_ID)
	REFERENCES Turler(ID),
	CONSTRAINT fk_kitapYayinevi FOREIGN KEY(YayinEvi_ID)
	REFERENCES Yayinevleri(ID),
	CONSTRAINT fk_kitapKategori FOREIGN KEY(Kategori_ID)
	REFERENCES Kategoriler(ID)
)
