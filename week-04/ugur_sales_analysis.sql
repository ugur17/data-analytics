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

select distinct category_name
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



-- 8. Which stores had total sales revenue for your [Category/Vendor] exceeding $2,000?
-- (Hint: Use HAVING to filter aggregated store totals).
-- (Strength: Pinpointing high-performing retail locations).

select st.name, sum(total) as total_revenue
from sales s
join stores st on s.store = st.store
group by st.name
having sum(total) >= 2000
order by total_revenue desc;
