--COUNT
SELECT COUNT(*) FROM Products
SELECT COUNT(*) FROM Categories

SELECT * FROM Products
--SUM
SELECT SUM(UnitsInStock) FROM Products

--Sto�umda toplam ne kadarl�k �r�n var
SELECT SUM(UnitsInStock * UnitPrice) AS TotalPrice FROM Products

--Toplam Ka� Adet Sat�� yap�lm��
SELECT COUNT(*) FROM Orders

--Toplam Ne kadarl�k sat�� yap�lm��
SELECT SUM(UnitPrice * Quantity) AS TotalPrice FROM [Order Details]

