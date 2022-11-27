--Yorum Satýrý
--DROP DATABASE Dershane_DB
CREATE DATABASE Dershane_DB
GO--Buraya kadar olan tüm komutlarý bitir sonra devam et
USE Dershane_DB
GO
CREATE TABLE Ogrenciler
(
	TCNo nvarchar(11),
	Isim nvarchar(50),
	Soyisim nvarchar(50),
	Telefon nvarchar(11),
	Adres nvarchar(500),
	CONSTRAINT pk_ogrenci PRIMARY KEY(TCNo)
)
GO
CREATE TABLE Urunler
(
	ID int IDENTITY(100,1),
	Isim nvarchar(150) NOT NULL,
	byte tinyint,
	Short smallint,
	tamsayi int,
	Long bigint,
	ondalik decimal(18,2),
	para money,
	tarihsaat datetime,
	tarih date,
	saat time,
	devammi bit,
	CONSTRAINT pk_urun PRIMARY KEY(ID)
)

