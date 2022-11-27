--COUNT
SELECT COUNT(*) FROM Products
SELECT COUNT(*) FROM Categories

SELECT * FROM Products
--SUM
SELECT SUM(UnitsInStock) FROM Products

--Stoðumda toplam ne kadarlýk ürün var
SELECT SUM(UnitsInStock * UnitPrice) AS TotalPrice FROM Products

--Toplam Kaç Adet Satýþ yapýlmýþ
SELECT COUNT(*) FROM Orders

--Toplam Ne kadarlýk satýþ yapýlmýþ
SELECT SUM(UnitPrice * Quantity) AS TotalPrice FROM [Order Details]

