-- product_category Market Share by Revenue
select product_category ,SUM(total_revenue) AS sum_revenue FROM amazon_sales_dataset
Group by product_category ORDER BY sum_revenue   DESC;

-- product_category Market Share by Quantity Sold
select product_category ,SUM(quantity_sold) AS quant_sold FROM amazon_sales_dataset
Group by product_category ORDER BY quant_sold DESC;

-- product_category with Best Avg Ratings
select product_category ,TRUNCATE(AVG(rating),2) AS avg_rating FROM amazon_sales_dataset
Group by product_category ORDER BY avg_rating DESC;

-- overall product_category 
select product_category from amazon_sales_dataset GROUP BY product_category
ORDER BY Sum(price), Sum(quantity_sold),Avg(rating) DESC LIMIT 1;

-- top category sales
SELECT product_category, sum(total_revenue) as sum_revenue from amazon_sales_dataset 
GROUP BY product_category ORDER BY sum_revenue DESC LIMIT 1;

-- top category quantity sold
select product_category,sum(quantity_sold) as quant_sold FROM amazon_sales_dataset
GROUP BY product_category ORDER BY quant_sold DESC LIMIT 1;

-- top category ratings
select product_category ,TRUNCATE(AVG(rating),2) AS avg_rating FROM amazon_sales_dataset
Group by product_category ORDER BY avg_rating DESC Limit 1;


-- How do discounts affect revenue?

-- How do discounts affect Total Revenue and Quantity sold?
select 
Concat(discount_percent,'%') as discount_percantage,
format(avg(price),2) as avg_price,
format(avg(discounted_price),2) as avg_discounted_price,
format(avg(total_revenue),2) as avg_total_revenue,
sum(quantity_sold) as quantity_sold
from amazon_sales_dataset GROUP BY discount_percent
ORDER BY cast(discount_percent AS UNSIGNED) DESC;

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
select
CASE
when month(order_date) in (12,01,02) THEN 'Winter'
when month(order_date) in (03,04,05) THEN 'Spring'
when month(order_date) in (06,07,08) THEN 'Summer'
when month(order_date) in (09,10,11) THEN 'Autumn'
end as Season ,
Format(sum(total_revenue),2) as seasonal_revenue, count(order_id) as seasonal_orders
from amazon_sales_dataset GROUP BY Season ORDER BY seasonal_revenue DESC;

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

-- Revenue vs Rating
select product_category, sum(total_revenue)as revenue, avg(rating) as avg_rating from amazon_sales_dataset
GROUP BY product_category ORDER BY revenue DESC;

-- Rating vs Quantity
select product_category, avg(rating) as avg_rating,sum(quantity_sold) as quant_sold from amazon_sales_dataset
GROUP BY product_category ORDER BY quant_sold DESC;



