-- SELECT, Filtering & Sorting (Jim Beam Brands)
-- 1. Create a list of all transactions for your chosen [Category/Vendor] that took place in
-- the last quarter of 2014, sorted by the total sale amount from highest to lowest.
-- (Strength: Identifying high-volume peak periods).

select * 
from sales s
join products p on s.item = p.item_no
where date between '2014-10-01'
	and '2015-01-01'
	and vendor_name = 'Jim Beam Brands'
order by total;


-- 2. Which transactions for your [Category/Vendor] had a bottle quantity greater than 12?
-- Display the date, store number, item description, and total amount.
-- (Strength: Identifying bulk buyers or wholesale-style transactions).

select date, store, description, total
from sales
where bottle_qty > 12;

-- 3. Find all products in the products table whose item_description contains a specific
-- keyword (e.g., 'Limited', 'Spiced'). What categories do they belong to?
-- (Opportunity: Identifying niche product variants).

select distinct category_name
from products
where item_description like '%Irish%';