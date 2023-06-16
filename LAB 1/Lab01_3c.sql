SELECT ProductName, CategoryName
FROM Products INNER JOIN Categories
	ON Products.CategoryID=Categories.CategoryID
ORDER BY 2 ASC

--Z pomoc� INNER JOIN przy��czamy kolejne tabele, kt�re posiadaj� relacje z obecn� tabel�. Tabela 'Categories' jest ~pod tabel�~ tabeli 'Products'
--('Products' zawiera "CategoryID", 'Categories' zawiera "Category ID" dlatego mo�e zosta� przy��czona)
--Bez INNER JOIN powstanie iloczyn kartezja�ski, gdy� nie ma relacji mi�dzy tabelami