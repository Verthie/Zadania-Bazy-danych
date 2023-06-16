SELECT IIF(COUNT(CustomerID)>0, 'nie', 'tak') as [czy posiadam numer faxu do wszystkich?]
FROM Customers
WHERE IIF(Fax is NULL, 'nie', 'tak') = 'nie'