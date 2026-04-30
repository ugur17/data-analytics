USE iowa_liquor_sales_database;

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

select item_description, category_name
from products
where item_description like '%Irish%';


-- Aggregation
-- 4. What is the total sales revenue and the average bottle price (btl_price) for
-- your chosen [Category/Vendor]?
-- (Strength/Baseline: Establishing the financial footprint).

select sum(total) as Total_Sales_Revenue, avg(btl_price :: numeric) as Avg_Bottle_Price
from sales s
join products p on s.item = p.item_no
where vendor_name = 'Jim Beam Brands';

-- 5. How many transactions were recorded for each specific item description within your
-- chosen [Category]? Which specific product is the most frequently purchased?
-- (Strength: Identifying your "hero" product).

select item_description, count(*)
from products p
join sales s on p.item_no = s.item
where vendor_name = 'Jim Beam Brands'
group by item_description
order by 2 desc;



-- 6. Which store generated the highest total revenue for your [Category/Vendor]?
-- Which generated the lowest (but still greater than zero)?

select st.name, sum(total) as highest_revenue
from sales s
join stores st on s.store = st.store
group by st.name
order by 2 desc
limit 1;

select st.name, sum(total) as lowest_revenue
from sales s
join stores st on s.store = st.store
group by st.name
having sum(total) > 0
order by 2 asc
limit 1;



-- (Strength vs. Weakness: Identifying your best and worst retail partners).
-- 7. What is the total revenue for every vendor within your chosen [Category],
-- sorted from highest to lowest?
-- (Threat: Identifying your top competitors in that space).

-- NOTE: I've changed the perspective from comparing retail partners to comparing 
-- categories.

select p.category_name, sum(total)
from products p
join sales s on p.item_no = s.item
where vendor_name = 'Jim Beam Brands'
group by p.category_name
order by sum(total) desc;


-- 8. Which stores had total sales revenue for your [Category/Vendor] exceeding $2,000?
-- (Hint: Use HAVING to filter aggregated store totals).
-- (Strength: Pinpointing high-performing retail locations).

select st.name, sum(total) as total_revenue
from sales s
join stores st on s.store = st.store
group by st.name
having sum(total) >= 2000
order by total_revenue desc;


-- Joins
-- 9. Find all sales records where the category_name is either your chosen category
-- or a closely related competitor category (e.g., 'VODKA 80 PROOF' vs 'IMPORTED VODKA').
-- (Threat: Comparing performance against direct substitutes).



-- 10. List all transactions where the state bottle cost was between $10 and $20 for
-- your [Category/Vendor].
-- (Opportunity: Analyzing performance in the "mid-tier" price bracket).

select * 
from sales s
join products p on p.item_no = s.item
where vendor_name = 'Jim Beam Brands'
	and state_btl_cost::numeric between 10 and 20;


-- 11. Write a query that displays each store's total sales for your [Category/Vendor]
-- along with the store's name and address from the stores_table.
-- (Strength: Mapping your physical sales footprint).

select st.name, store_address, sum(total) as total_sales
from sales s
join stores st on s.store = st.store
join products p on p.item_no = s.item
where vendor_name = 'Jim Beam Brands'
group by st.name, store_address
order by 3 desc;


-- 12. For each sale in your [Category], display the transaction date, total amount,
-- and the population of the county where the sale occurred by joining with counties_
-- (Opportunity: Correlating sales volume with population density).table.

select * from counties;

select date, total, population
from sales s
join counties c on s.county = c.county
join products p on p.item_no = s.item
where vendor_name = 'Jim Beam Brands';

-- 13. Write a query that shows total sales for your [Category/Vendor] by county.
-- Which county generates the most revenue for you?
-- (Strength: Identifying your geographic stronghold).

select s.county, sum(total)
from sales s
join counties c on s.county = c.county
join products p on p.item_no = s.item
where vendor_name = 'Jim Beam Brands'
group by s.county
order by 2 desc ;

-- 14. Join the sales_table and products_table to show total revenue for your [Vendor]
-- alongside the proof and pack size of the items.
-- (Strength: Determining if higher proof or larger packs drive more revenue).

select * from products;

select item_no, item_description, bottle_size, proof, sum(total)
from sales s
join products p on p.item_no = s.item
where vendor_name = 'Jim Beam Brands'
group by item_no
order by sum(total) desc;

-- 15. Are there any counties in the counties_table that have a population over 10,000
-- but zero sales for your [Category/Vendor]?
-- (Opportunity: Identifying untapped markets).

select s.county, sum(total)
from sales s
join counties c on s.county = c.county
join products p on p.item_no = s.item
where vendor_name = 'Jim Beam Brands'
	and population > 10000
group by s.county
order by 2 asc ;


-- 16. Display total revenue for your [Category/Vendor] grouped by the store status_
-- (from stores_table). Are active stores ('A') performing significantly better than others?
-- (Threat: Assessing the risk of sales tied to inactive or closed locations).


select store_status, sum(total)
from sales s
join stores st on s.store = st.store
where vendor = 'Jim Beam Brands'
group by store_status;

select * 
from sales s
join stores st on s.store = st.store
where store_status = 'I';