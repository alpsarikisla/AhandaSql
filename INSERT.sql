--INSERT
--Veri Ekleme
INSERT INTO Fakulteler(Isim,Dekan)
VALUES('Ziraat Fak�ltesi', 'Oktay �al��kan')

INSERT INTO Fakulteler(Isim)
VALUES('M�hendislik Fak�ltesi')

INSERT INTO Fakulteler(Isim, Dekan)
VALUES('G�zel Sanatlar Fak�ltesi','Hasan H�seyin Badak')

INSERT INTO Bolumler(Isim, Fakulte_ID)
VALUES('Fizik B�l�m�', 1)
INSERT INTO Bolumler(Isim, Fakulte_ID)
VALUES('Kimya B�l�m�', 1)
INSERT INTO Bolumler(Isim, Fakulte_ID)
VALUES('Kar��la�t�rmal� Edebiyat', 1)
INSERT INTO Bolumler(Isim, Fakulte_ID)
VALUES('Biyoloji B�l�m�', 1)

INSERT INTO Bolumler(Isim, Fakulte_ID)
VALUES('Elektrik M�hendisli�i', 3)