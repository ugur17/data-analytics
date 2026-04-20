-- 4a) The table that holds the items Northwind sells is the products table.
-- 4b) The table that holds the categories of items is the categories table.


-- 5a) There is no employee whose name makes it look like she’s a bird
SELECT * from employees;

-- 6)
SELECT * from products;

-- a) This query returns 77 records.
-- Using the toolbar at the top of the query pane, the result set can be limited to 10 rows by changing the row limit option (e.g., setting it to 10).

-- b) BONUS:
-- The number of rows returned can be limited using the LIMIT clause in SQL.
-- Example: SELECT * FROM products LIMIT 10;
-- We've seen it during lecture.


-- 7c) Category id for seafood is 8.
SELECT * from categories;

-- 8a)
SELECT OrderID, OrderDate, ShipName, ShipCountry from orders;