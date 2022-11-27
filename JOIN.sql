SELECT * FROM Categories
SELECT * FROM Products

SELECT Products.ProductID, Products.ProductName, Products.CategoryID, Categories.CategoryName
FROM Products
JOIN Categories ON Products.CategoryID = Categories.CategoryID

SELECT Products.ProductID, Products.ProductName,Categories.CategoryName, Products.UnitsInStock, Products.UnitPrice
FROM Products
JOIN Categories ON Products.CategoryID = Categories.CategoryID

SELECT Products.*, Categories.*
FROM Products
JOIN Categories ON Categories.CategoryID = Products.CategoryID

SELECT p.ProductID, p.ProductName, c.CategoryName, p.UnitsInStock, p.ReorderLevel, p.UnitPrice, p.Discontinued
FROM Products AS P
JOIN Categories AS C ON P.CategoryID = C.CategoryID

--Ürünlerin ID,Ýsim Kategori Adý, Tedarikçi Firme Adý, Tedarikçi firma yetkilisi, stok miktarý, Fiyatý
SELECT p.ProductID, p.ProductName, C.CategoryName, s.CompanyName, s.ContactName, p.UnitsInStock, p.UnitPrice
FROM Products AS P
JOIN Categories AS C ON P.CategoryID = C.CategoryID
JOIN Suppliers AS S ON P.SupplierID = S.SupplierID

--Sipariþ vermem gereken satýþtaki ürünlerin
--Ürünlerin ID,Ýsim Kategori Adý, Tedarikçi Firma Adý, 
--Tedarikçi firma yetkilisi, Firma Telefon numarasý, stok miktarý, Güvenlik Stoðu, Güvenlik stoðu ve stok farký
SELECT p.ProductID, p.ProductName, C.CategoryName, s.CompanyName, s.ContactName,S.Phone, P.UnitsInStock, P.ReorderLevel, P.ReorderLevel - P.UnitsInStock AS Fark
FROM Products AS P
JOIN Categories AS C ON P.CategoryID = C.CategoryID
JOIN Suppliers AS S ON P.SupplierID = S.SupplierID
WHERE P.UnitsInStock <= P.ReorderLevel AND P.Discontinued = 0

SELECT * FROM [Order Details]

--Sipariþ Detaylarý tabosunu ürün isimleri ile birlikte yazýnýz
SELECT P.ProductName, P.UnitPrice AS ListPrice, OD.UnitPrice, OD.Quantity, OD.Discount, OD.Quantity * OD.UnitPrice AS Total
FROM [Order Details] AS OD
JOIN Products AS P ON OD.ProductID = P.ProductID

