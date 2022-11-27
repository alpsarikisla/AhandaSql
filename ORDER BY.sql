--ORDER BY
SELECT * FROM Products ORDER BY UnitPrice
SELECT * FROM Products ORDER BY UnitPrice DESC

SELECT * FROM Products ORDER BY ProductName
SELECT * FROM Products ORDER BY ProductName DESC

--�r�n fiyat� 20 ile 50 aras�nda olan �r�nleri fiyatlar�na g�re b�y�kten k����e g�re s�ralayarak getiriniz
SELECT ProductID, ProductName, UnitPrice
FROM Products WHERE UnitPrice >20 AND UnitPrice < 50
ORDER BY UnitPrice DESC

SELECT ProductID, ProductName, UnitPrice
FROM Products WHERE UnitPrice BETWEEN 20 AND 50
ORDER BY UnitPrice DESC

--Fiyat� en pahall� 10 �r�n
SELECT TOP(10) *
From Products
ORDER BY UnitPrice DESC

