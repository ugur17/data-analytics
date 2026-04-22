USE northwind;


/* 1. Write a query to list the product id, product name, and unit price of every product. This
time, display them in ascending order by price. */

select ProductID, ProductName, UnitPrice
from Products
order by UnitPrice ASC;

/* 2. What are the products that we carry where we have at least 100 units on hand? Order
them in descending order by price. */

select *
from Products
where UnitsInStock >= 100
order by UnitPrice desc;

/* 3. What are the products that we carry where we have at least 100 units on hand? Order
them in descending order by price. If two or more have the same price, list those in
ascending order by product name. */

select *
from Products
where UnitsInStock >= 100
order by UnitPrice desc, ProductName asc;


/* 4. Write a query against the orders table that displays the total number of distinct
customers who have placed orders, based on customer ID. Use an alias to label the
count calculation as CustomerCount. */

select count(distinct CustomerID) as CustomerCount
from orders;

/* 5. Write a query against the orders table that displays the total number of distinct
customers who have placed orders, by customer ID, for each country where orders
have been shipped. Again, use an alias to label the count as CustomerCount. Order
the list by the CustomerCount, largest to smallest. */

select ShipCountry, count(distinct CustomerID) as CustomerCount
from orders
group by ShipCountry
order by CustomerCount desc;

/* 6. What are the products that we carry where we have less than 25 units on hand, but 1
or more units of them are on order? Write a query that orders them by quantity on
order (high to low), then by product name. */

select *
from products
where unitsinstock < 25
	and unitsonorder >= 1
order by unitsonorder desc, productname;

/* 7. Write a query to list each of the job titles in employees, along with a count of how
many employees hold each job title. */

select title, count(*)
from employees
group by title;


/* 8. What employees have a monthly salary that is between $2000 and $2500? Write a
query that orders them by job title. */

select *
from employees
where salary between 2000 and 2500
order by title;








