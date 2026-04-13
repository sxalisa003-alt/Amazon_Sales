#Structure Scan
SELECT * FROM amazonsales_project.amazon_sales_dataset
LIMIT 10;

#Null Scan
SELECT COUNT(*) AS total_rows,
COUNT(order_id) as order_id_count,
COUNT(product_id) as product_id_count,
COUNT(price) as price_count,
COUNT(total_revenue) as total_revenue_count
 from amazonsales_project.amazon_sales_dataset;
 
 #Scan Duplicates
 SELECT order_id, COUNT(*) AS count
 from amazonsales_project.amazon_sales_dataset
 GROUP by order_id
 HAVING COUNT(*) > 1;
 
 #Validate TotalRev Calculation
 SELECT * FROM amazonsales_project.amazon_sales_dataset
 where total_revenue!=discounted_price*quantity_sold;
 
 #Validate Set Inbounds Values
 SELECT  min(rating),max(rating), min(price),max(price),min(discount_percent),max(discount_percent)
 FROM amazonsales_project.amazon_sales_dataset;
 
 #ValidateDate
 SELECT min(order_date), max(order_date)
FROM amazonsales_project.amazon_sales_dataset;
 
 SELECT DISTINCT year(order_date)
 FROM amazonsales_project.amazon_sales_dataset
 ORDER BY 1;
 
 #StandardizationCheck
 SELECT Distinct(product_category)  FROM amazonsales_project.amazon_sales_dataset;
 Select Distinct(customer_region) FROM amazonsales_project.amazon_sales_dataset;
 Select Distinct(payment_method) FROM amazonsales_project.amazon_sales_dataset;
 
 

 