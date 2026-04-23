USE northwind;

/* 1. Write a query to find the price of the cheapest item that Northwind sells. Then write a
second query to find the name of the product that has that price. */

select min(unitprice) as cheapest_item
from products;

select productname
from products
where unitprice = (
	select min(unitprice)
    from products
);

/* 2. Write a query to find the average price of all items that Northwind sells.
(Bonus: Once you have written a working query, try asking Claude or ChatGPT for help
using the ROUND function to round the average price to the nearest cent.) */

select round(avg(unitprice), 2)
from products;


/* 3. Write a query to find the price of the most expensive item that Northwind sells. Then
write a second query to find the name of the product with that price, plus the name of
the supplier for that product. */

select max(unitprice) as most_expensive_item
from products;

select productname, companyname
from products p
join suppliers s on p.supplierid = s.supplierid
where unitprice = (
	select max(unitprice)
    from products
);

/* 4. Write a query to find total monthly payroll (the sum of all the employees’ monthly
salaries). */

select round(sum(salary), 2)
from employees;


/* 5. Write a query to identify the highest salary and the lowest salary amounts which any
employee makes. (Just the amounts, not the specific employees!) */

select min(salary), max(salary)
from employees;

/* 6. Write a query to find the name and supplier ID of each supplier and the number of
items they supply. Hint: Join is your friend here. */

select s.supplierid, companyname, count(*) as total_items
from suppliers s
join products p on s.supplierid = p.supplierid
group by supplierid;

/* 7. Write a query to find the list of all category names and the average price for items in
each category. */

select categoryname, round(avg(unitprice), 2) as avg_price
from categories c
join products p on c.categoryid = p.categoryid
group by categoryname;

/* 8. Write a query to find, for all suppliers that provide at least 5 items to Northwind, what
is the name of each supplier and the number of items they supply. */

select companyname, count(*) as total_items
from suppliers s
join products p on s.supplierid = p.supplierid
group by companyname
having total_items >= 5;

/* 9. Write a query to list products currently in inventory by the product id, product name,
and inventory value (calculated by multiplying unit price by the number of units on
hand). Sort the results in descending order by value. If two or more have the same
value, order by product name. If a product is not in stock, leave it off the list. */


select productid, productname, round((unitsinstock * unitprice), 2) as inventory_value
from products
where unitsinstock > 0
order by inventory_value desc, productname;


