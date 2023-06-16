SELECT ProductName, CategoryName
FROM Products INNER JOIN Categories
	ON Products.CategoryID=Categories.CategoryID
ORDER BY 2 ASC

--Z pomoc¹ INNER JOIN przy³¹czamy kolejne tabele, które posiadaj¹ relacje z obecn¹ tabel¹. Tabela 'Categories' jest ~pod tabel¹~ tabeli 'Products'
--('Products' zawiera "CategoryID", 'Categories' zawiera "Category ID" dlatego mo¿e zostaæ przy³¹czona)
--Bez INNER JOIN powstanie iloczyn kartezjañski, gdy¿ nie ma relacji miêdzy tabelami