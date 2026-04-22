USE northwind;


/* 1. Create a single query to list the product id, product name, unit price and category
name of all products. Order by category name and within that, by product name. */

select productid, productname, unitprice, categoryname
from products p
join categories c on p.categoryid = c.categoryid
order by categoryname, productname;


/* 2. Create a single query to list the product id, product name, unit price and supplier
name of all products that cost more than $75. Order by product name. */

select productid, productname, unitprice, companyname
from products p
join suppliers s on p.supplierid = s.supplierid
where unitprice > 75
order by productname;


/* 3. Create a single query to list the product id, product name, unit price, category name,
and supplier name of every product. Order by product name. */

select productid, productname, unitprice, categoryname, companyname
from products p
join categories c on p.categoryid = c.categoryid
join suppliers s on p.supplierid = s.supplierid
order by productname;

/* 4. Create a single query to list the order id, ship name, ship address, and shipping
company name of every order that shipped to Germany. Assign the shipping company
name the alias ‘Shipper.’ Order by the name of the shipper, then the name of who it
shipped to. */

select orderid, shipname, shipaddress, companyname as Shipper
from orders o
join shippers s on o.shipvia = s.shipperid
where shipcountry = 'Germany'
order by shipper, shipname;


/* 5. Start from the same query as above (#4), but omit OrderID and add logic to group by
ship name, with a count of how many orders were shipped for that ship name. */

select shipname, count(orderid)
from orders o
join shippers s on o.shipvia = s.shipperid
where shipcountry = 'Germany'
group by shipname
order by shipname;


/* 6. Create a single query to list the order id, order date, ship name, ship address of all
orders that included Sasquatch Ale.
∗ Hint: You will need to join on three tables to accomplish this. (One of these tables
has a sneaky space in the name, so you will need to surround it with backticks, like
this: `table name`) */

select o.orderid, orderdate, shipname, shipaddress
from orders o
join `Order Details` od on o.orderid = od.orderid
join products p on od.productid = p.productid
where productname = 'Sasquatch Ale';





