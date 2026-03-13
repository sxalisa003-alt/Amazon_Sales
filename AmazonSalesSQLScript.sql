-- product_category Market Share by Revenue
select product_category ,SUM(total_revenue) AS sum_revenue FROM amazon_sales_dataset
Group by product_category ORDER BY sum_revenue   DESC;

-- product_category Market Share by Quantity Sold
select product_category ,SUM(quantity_sold) AS quant_sold FROM amazon_sales_dataset
Group by product_category ORDER BY quant_sold DESC;

-- product_category with Best Avg Ratings
select product_category ,format(AVG(rating),2) AS avg_rating FROM amazon_sales_dataset
Group by product_category ORDER BY avg_rating DESC;

-- How do discounts affect Total Revenue and Quantity sold?
SELECT 
    CONCAT(discount_percent, '%') AS discount_percentage,
    -- Avg price tells us the "class" of products being discounted
    FORMAT(AVG(price), 2) AS avg_original_price,
    -- Total Revenue tells us the actual scale of success
    FORMAT(SUM(total_revenue), 2) AS total_revenue_generated,
    -- Total Quantity tells us the inventory velocity
    SUM(quantity_sold) AS total_units_sold,
    -- Average Discounted Price
    FORMAT(AVG(discounted_price), 2) AS avg_unit_sale_price
FROM amazon_sales_dataset 
GROUP BY discount_percent
-- Sorting by the number value of the discount
ORDER BY CAST(discount_percent AS UNSIGNED) ASC;

-- Regional Performance

-- Region Market Share by Revenue
select customer_region, sum(total_revenue) as revenue from
amazon_sales_dataset GROUP BY customer_region ORDER BY revenue DESC;

-- Order Volume by Region
select customer_region, count(order_id) as count_orders
from amazon_sales_dataset GROUP BY customer_region ORDER BY count_orders DESC;

-- Avg Rating By Region 	
select customer_region,FORMAT(avg(rating),2) as avg_rating from
amazon_sales_dataset GROUP BY  customer_region Order by avg_rating DESC;

-- Customer Behaviour

-- Most Used Payment Method
select payment_method, count(payment_method) as count_paymethod from amazon_sales_dataset
GROUP BY payment_method ORDER BY count_paymethod DESC;

-- Region with most review count and rating
select customer_region,format(avg(review_count),2) as avg_reviews,sum(review_count) as sum_reviews from amazon_sales_dataset
GROUP BY customer_region ORDER BY avg_reviews,sum_reviews DESC;

-- Time Trends

-- Monthly Revenue Trends
select  
 date_format(order_date, '%b-%Y') as year_and_month,
 sum(total_revenue) as sum_revenue,
 count(order_id) as count_orders from amazon_sales_dataset
 GROUP BY year_and_month ORDER BY year_and_month;

-- Seasonal Performance
SELECT
YEAR(order_date) AS year,

CASE
WHEN MONTH(order_date) IN (12,1,2) THEN 'Winter'
WHEN MONTH(order_date) IN (3,4,5) THEN 'Spring'
WHEN MONTH(order_date) IN (6,7,8) THEN 'Summer'
WHEN MONTH(order_date) IN (9,10,11) THEN 'Autumn'
END AS season,

SUM(total_revenue) AS seasonal_revenue,
COUNT(order_id) AS seasonal_orders

FROM amazon_sales_dataset

GROUP BY year, season

ORDER BY year, seasonal_revenue DESC;


-- Category Trends overtime
select date_format(order_date, '%Y-%b') as year_and_month, product_category,
 sum(total_revenue) as sum_revenue,
 count(order_id) as count_orders from amazon_sales_dataset
 GROUP BY product_category, year_and_month
  ORDER BY min(order_date) ASC, product_category;

-- MoM growth
with MonthlySales as (select
date_format(order_date,'%Y-%m-01') as month_start,
sum(total_revenue) as curr_month_revenue,
count(order_id) as curr_order_count
from amazon_sales_dataset
GROUP BY month_start
)

select month_start,curr_month_revenue,curr_order_count,

LAG(curr_month_revenue) OVER (order by month_start) as prev_month_revenue,
round(
((curr_month_revenue-LAG(curr_month_revenue) OVER (Order by month_start))/
LAG(curr_month_revenue) OVER (Order by month_start))*100,2) as revenue_MoM_percent,

LAG(curr_order_count) OVER (ORDER BY month_start) AS prev_order_count,
round(
((curr_order_count-LAG(curr_order_count) OVER (Order by month_start))/
LAG(curr_order_count) OVER (Order by month_start))*100,2) as order_MoM_percent

from MonthlySales
Order By month_start;

-- Ratings Vs Performance

-- Order Volume vs Rating
SELECT
rating,
SUM(total_revenue) AS total_revenue,
SUM(quantity_sold) AS units_sold,
COUNT(order_id) AS orders

FROM amazon_sales_dataset

GROUP BY rating

ORDER BY total_revenue DESC; 