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

--�r�nlerin ID,�sim Kategori Ad�, Tedarik�i Firme Ad�, Tedarik�i firma yetkilisi, stok miktar�, Fiyat�
SELECT p.ProductID, p.ProductName, C.CategoryName, s.CompanyName, s.ContactName, p.UnitsInStock, p.UnitPrice
FROM Products AS P
JOIN Categories AS C ON P.CategoryID = C.CategoryID
JOIN Suppliers AS S ON P.SupplierID = S.SupplierID

--Sipari� vermem gereken sat��taki �r�nlerin
--�r�nlerin ID,�sim Kategori Ad�, Tedarik�i Firma Ad�, 
--Tedarik�i firma yetkilisi, Firma Telefon numaras�, stok miktar�, G�venlik Sto�u, G�venlik sto�u ve stok fark�
SELECT p.ProductID, p.ProductName, C.CategoryName, s.CompanyName, s.ContactName,S.Phone, P.UnitsInStock, P.ReorderLevel, P.ReorderLevel - P.UnitsInStock AS Fark
FROM Products AS P
JOIN Categories AS C ON P.CategoryID = C.CategoryID
JOIN Suppliers AS S ON P.SupplierID = S.SupplierID
WHERE P.UnitsInStock <= P.ReorderLevel AND P.Discontinued = 0

SELECT * FROM [Order Details]

--Sipari� Detaylar� tabosunu �r�n isimleri ile birlikte yaz�n�z
SELECT P.ProductName, P.UnitPrice AS ListPrice, OD.UnitPrice, OD.Quantity, OD.Discount, OD.Quantity * OD.UnitPrice AS Total
FROM [Order Details] AS OD
JOIN Products AS P ON OD.ProductID = P.ProductID

