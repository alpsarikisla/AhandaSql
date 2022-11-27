--WHERE
SELECT * FROM Products

--Fiyat� 50 �st� olan �r�nler
SELECT * FROM Products WHERE UnitPrice > 50

SELECT ProductID, ProductName, UnitPrice
FROM Products WHERE UnitPrice > 50

--Seafood(8) kategorisindeki �r�nler

SELECT * FROM Products WHERE CategoryID = 8

--Sat��� devam eden �r�nler
SELECT * FROM Products WHERE Discontinued = 0

--Sat��� devam eden fiyat� 50 lira �st� �r�nler
SELECT * FROM Products WHERE Discontinued = 0 AND UnitPrice > 50

--Sipari� vermem gereken �r�nler
SELECT * FROM Products WHERE UnitsInStock <= ReorderLevel AND Discontinued = 0

--Sto�umda �r�n Baz�nda Ne kadarl�k �r�n var
SELECT ProductID,ProductName, Unitprice * UnitsInStock AS TotalPrice FROM Products

--Fransa Almanya ve Brezilya ya g�nderilen sipari�ler
SELECT * FROM Orders WHERE ShipCountry = 'France' OR ShipCountry = 'Germany' OR ShipCountry = 'Brazil'

--Fax Numaras� olmayan M��teriler
SELECT * FROM Customers WHERE Fax IS NULL

SELECT CustomerID, CompanyName, Fax FROM Customers WHERE Fax IS NOT NULL

--�smi A ile ba�layan �r�nler
SELECT ProductID,ProductName FROM Products WHERE ProductName LIKE 'A%'

SELECT ProductID,ProductName FROM Products WHERE ProductName LIKE '%A'

--�smi i�inde Un ge�en �r�nler
SELECT ProductID,ProductName FROM Products WHERE ProductName LIKE '%un%'

INSERT INTO Products(ProductName, SupplierID, CategoryID, UnitPrice, UnitsInStock)
VALUES('Cappy %100 portakal suyu', 5, 3, 20, 120)

--�smi i�erisinde % ge�en �r�nler
SELECT ProductID,ProductName FROM Products WHERE ProductName LIKE '%\%%' ESCAPE '\'












