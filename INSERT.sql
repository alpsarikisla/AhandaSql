--INSERT
--Veri Ekleme
INSERT INTO Fakulteler(Isim,Dekan)
VALUES('Ziraat Fakültesi', 'Oktay Çalýþkan')

INSERT INTO Fakulteler(Isim)
VALUES('Mühendislik Fakültesi')

INSERT INTO Fakulteler(Isim, Dekan)
VALUES('Güzel Sanatlar Fakültesi','Hasan Hüseyin Badak')

INSERT INTO Bolumler(Isim, Fakulte_ID)
VALUES('Fizik Bölümü', 1)
INSERT INTO Bolumler(Isim, Fakulte_ID)
VALUES('Kimya Bölümü', 1)
INSERT INTO Bolumler(Isim, Fakulte_ID)
VALUES('Karþýlaþtýrmalý Edebiyat', 1)
INSERT INTO Bolumler(Isim, Fakulte_ID)
VALUES('Biyoloji Bölümü', 1)

INSERT INTO Bolumler(Isim, Fakulte_ID)
VALUES('Elektrik Mühendisliði', 3)