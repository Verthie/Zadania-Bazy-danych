USE w65539ex;
DROP FUNCTION IF EXISTS Production.TopProducts;
GO
CREATE FUNCTION Production.TopProducts
(@supid AS INT, @n AS INT)
RETURNS TABLE
AS
RETURN
SELECT TOP (@n) productid, productname, unitprice
FROM Production.Products
WHERE supplierid=@supid
ORDER BY unitprice DESC;
GO