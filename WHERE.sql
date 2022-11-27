--WHERE
SELECT * FROM Products

--Fiyatý 50 üstü olan ürünler
SELECT * FROM Products WHERE UnitPrice > 50

SELECT ProductID, ProductName, UnitPrice
FROM Products WHERE UnitPrice > 50

--Seafood(8) kategorisindeki ürünler

SELECT * FROM Products WHERE CategoryID = 8

--Satýþý devam eden ürünler
SELECT * FROM Products WHERE Discontinued = 0

--Satýþý devam eden fiyatý 50 lira üstü ürünler
SELECT * FROM Products WHERE Discontinued = 0 AND UnitPrice > 50

--Sipariþ vermem gereken ürünler
SELECT * FROM Products WHERE UnitsInStock <= ReorderLevel AND Discontinued = 0

--Stoðumda Ürün Bazýnda Ne kadarlýk ürün var
SELECT ProductID,ProductName, Unitprice * UnitsInStock AS TotalPrice FROM Products

--Fransa Almanya ve Brezilya ya gönderilen sipariþler
SELECT * FROM Orders WHERE ShipCountry = 'France' OR ShipCountry = 'Germany' OR ShipCountry = 'Brazil'

--Fax Numarasý olmayan Müþteriler
SELECT * FROM Customers WHERE Fax IS NULL

SELECT CustomerID, CompanyName, Fax FROM Customers WHERE Fax IS NOT NULL

--Ýsmi A ile baþlayan ürünler
SELECT ProductID,ProductName FROM Products WHERE ProductName LIKE 'A%'

SELECT ProductID,ProductName FROM Products WHERE ProductName LIKE '%A'

--Ýsmi içinde Un geçen ürünler
SELECT ProductID,ProductName FROM Products WHERE ProductName LIKE '%un%'

INSERT INTO Products(ProductName, SupplierID, CategoryID, UnitPrice, UnitsInStock)
VALUES('Cappy %100 portakal suyu', 5, 3, 20, 120)

--Ýsmi içerisinde % geçen ürünler
SELECT ProductID,ProductName FROM Products WHERE ProductName LIKE '%\%%' ESCAPE '\'












