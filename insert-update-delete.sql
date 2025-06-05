use northwind;


-- 1. Add a new supplier.

INSERT INTO Suppliers (CompanyName, ContactName, ContactTitle, Address, City, Country, Phone)
VALUES ('Best Spices Co.', 'Lena Smith', 'Sales Rep', '123 Spice Lane', 'Istanbul', 'Turkey', '555-1234');

-- 2. Add a new product provided by that supplier

INSERT INTO Products (ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, Discontinued)
VALUES ('Hot Chili Powder', 30, 2, '50g bag', 10.00, 100, 0);

-- 3. SELECT p.ProductName, s.CompanyName AS Supplier

SELECT p.ProductName, s.CompanyName AS Supplier
FROM Products p
JOIN Suppliers s ON p.SupplierID = s.SupplierID;

-- 4. 

UPDATE Products
SET UnitPrice = UnitPrice * 1.15
WHERE ProductName = 'Hot Chili Powder';

-- 5. List the products and prices of all products from that supplier. 

SELECT p.ProductName, p.UnitPrice
FROM Products p
JOIN Suppliers s ON p.SupplierID = s.SupplierID
WHERE s.CompanyName = 'Best Spices Co.';

-- 6. Delete the new product.

DELETE FROM Products
WHERE ProductName = 'Hot Chili Powder';

-- 7. Delete the new product.

DELETE FROM Suppliers
WHERE CompanyName = 'Best Spices Co.';

-- 8. List all products.

SELECT * FROM Products;


-- 9. List all suppliers.

SELECT * FROM Suppliers;







