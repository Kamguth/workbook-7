USE northwind;

SELECT * FROM employees;

-- 1. How many suppliers are there? Use a query!

SELECT COUNT(*) 
FROM Suppliers;

-- 2. What is the sum of all the employee's salaries?

SELECT CONCAT('$', ROUND(SUM(salary),2)) FROM Employees;

-- 3. What is the price of the cheapest item that Northwind sells?

SELECT MIN(UnitPrice) FROM Products;

-- 4. What is the average price of items that Northwind sells?

SELECT AVG(UnitPrice) FROM Products;

-- 5. What is the price of the most expensive item that Northwind sells?

SELECT MAX(UnitPrice) FROM Products;

-- 6. What is the supplier ID of each supplier and the number of items they
-- 	 supply? You can answer this query by only looking at the Products table.

SELECT SupplierID, COUNT(SupplierID) AS ProductCount
FROM Products
GROUP BY SupplierID;

-- 7. What is the category ID of each category and the average price of each item
-- in the category? You can answer this query by only looking at the Products table

SELECT CategoryID, AVG(UnitPrice) AS AveragePrice
 FROM Products
 GROUP BY CategoryID;
 
 -- 8.





