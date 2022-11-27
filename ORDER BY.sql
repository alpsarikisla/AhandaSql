--ORDER BY
SELECT * FROM Products ORDER BY UnitPrice
SELECT * FROM Products ORDER BY UnitPrice DESC

SELECT * FROM Products ORDER BY ProductName
SELECT * FROM Products ORDER BY ProductName DESC

--Ürün fiyatý 20 ile 50 arasýnda olan ürünleri fiyatlarýna göre büyükten küçüðe göre sýralayarak getiriniz
SELECT ProductID, ProductName, UnitPrice
FROM Products WHERE UnitPrice >20 AND UnitPrice < 50
ORDER BY UnitPrice DESC

SELECT ProductID, ProductName, UnitPrice
FROM Products WHERE UnitPrice BETWEEN 20 AND 50
ORDER BY UnitPrice DESC

--Fiyatý en pahallý 10 ürün
SELECT TOP(10) *
From Products
ORDER BY UnitPrice DESC

