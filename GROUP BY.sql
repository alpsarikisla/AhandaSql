--Hangi Kategoride Kaç Adet Ürün Var
SELECT COUNT(*) FROM Products

SELECT CategoryID, COUNT(*) FROM Products
GROUP BY CategoryID

--Kategori Adýna Göre Hangi Kategoride Kaç Adet Ürün Var
SELECT C.CategoryName, COUNT(*) AS Adet
FROM Products AS P
JOIN Categories AS C ON P.CategoryID = C.CategoryID
GROUP BY C.CategoryName

SELECT C.CategoryName, COUNT(*) AS Adet
FROM Products AS P
JOIN Categories AS C ON P.CategoryID = C.CategoryID
WHERE P.Discontinued = 0
GROUP BY C.CategoryName

--Hangi Personelim kaç adet satýþ yapmýþ
SELECT E.FirstName, E.LastName, COUNT(*) AS Total
FROM Orders AS O
JOIN Employees AS E ON O.EmployeeID = E.EmployeeID
GROUP BY E.FirstName,E.LastName
ORDER BY Total DESC

SELECT E.TitleOfCourtesy + ' ' + E.FirstName + ' ' + E.LastName AS Employee, COUNT(*) AS Total
FROM Orders AS O
JOIN Employees AS E ON O.EmployeeID = E.EmployeeID
GROUP BY E.TitleOfCourtesy + ' ' + E.FirstName + ' ' + E.LastName
ORDER BY Total DESC

--Hangi Ürünümden Ne Kadarlýk Satýþ Yapýlmýþ
SELECT P.ProductName, SUM(OD.Quantity * OD.UnitPrice) AS Total
FROM [Order Details] AS OD
JOIN Products AS P ON OD.ProductID = P.ProductID
GROUP BY P.ProductName ORDER BY Total DESC


--Hangi Personelim Ne Kadarlýk Satýþ Yapmýþ
SELECT * FROM Orders
SELECT * FROM [Order Details]

SELECT E.FirstName + ' ' + E.LastName AS Employee, SUM(OD.Quantity * OD.UnitPrice) AS Total
FROM [Order Details] AS OD
JOIN Orders AS O ON OD.OrderID = O.OrderID
JOIN Employees AS E ON O.EmployeeID = E.EmployeeID
WHERE O.ShipCountry = 'Brazil'
GROUP BY  E.FirstName + ' ' + E.LastName ORDER BY Total DESC

