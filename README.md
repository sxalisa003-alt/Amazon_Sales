# Amazon Sales Dashboard | SQL and Excel Project 

## Overview 
This project analyzes an Amazon sales dataset to investigate how product categories, regions, payment methods, and time trends influence revenue generation, order volume, and quantities sold. The analysis also explores how factors such as product ratings, review counts, and discount strategies relate to sales performance. The goal was to identify key business drivers and uncover patterns that could support data-driven decision making through SQL analysis and an interactive Excel dashboard.
The project combines data cleaning, exploratory data analysis, and dashboard development to transform raw transactional data into actionable insights.


## Project Objectives

This project seeks to answer the following business questions:

1. Overall Business Performance
 * What is the total revenue generated?
 * What is the total number of orders?
 * What is the total quantity of products sold?
 * What is the overall average product rating?
2. Product Category Performance
 * How much revenue does each product category generate?
 * How many units are sold within each product category?
 * What is the average product rating per category?
3. Regional Performance Analysis
 * How much revenue does each region generate?
 * Which regions show the highest activity based on order volume, ratings, and review counts?
4. Monthly Performance
 * How has revenue performed monthly over the past two years?
5. Seasonal Product Performance
 * How does each product category perform across different seasons in terms of revenue and sales volume?
 * Which categories contribute the most to revenue during peak seasons?
6. Growth Trend Analysis
 * What trends are revealed by the month-over-month (MoM) percentage change in revenue and orders across the two years?
 * Are there periods of consistent growth or decline?
7. Ratings Impact Analysis
 * How do product ratings influence quantity sold and revenue generation?
 * Do high-rated products consistently generate more sales?
 * Do high-rated products generate significantly more revenue and sales compared to low-rated products?
8. Payment Behavior Analysis
 * How do payment methods influence order volume, units sold, and revenue?
 * Do certain payment methods show stronger usage patterns or customer preferences?
9. Discount Effectiveness Analysis
 * Do higher discounts lead to increased sales volume and total revenue?
 * Is there an optimal discount range that maximizes performance?
   
## Tools & Skills Used

This project involved the use of SQL, Excel, and data modeling techniques to clean, analyze, and visualize the dataset.
* ##### Database Management: MySQL (SQL querying, data aggregation, data validation, and exploratory analysis)
* ##### Development Environment: VS Code (SQL scripting and query organization)
* ##### Data Analysis & Modeling: Microsoft Excel (Pivot Tables, Data Modeling, Data Relationships)
* ##### Data Visualization: Excel Interactive Dashboards (Slicers, Pivot Charts, Dynamic Filtering, Dashboard Design)
* ##### Version Control: GitHub (Documentation, Script Hosting, Portfolio presentation)

## Data Cleaning & Constraints

### Data Quality Checks

Data validation checks were performed using SQL to ensure the dataset was suitable for analysis. These checks included identifying missing values, verifying data consistency, checking for duplicates, and validating numeric fields such as revenue, quantity sold, and ratings.
The dataset was found to be clean with no significant anomalies or inconsistencies. As a result, no major data cleaning transformations were required. The validation queries used are included in the project repository.

### Project Constraints and Technical Lessons
Initially, only 14,999 records were used from the original 50,000 record dataset due to the dataset being imported using the MySQL Import Wizard. This method generated individual INSERT INTO statements for each record, which significantly slowed the loading process. A more efficient approach would have been to use the LOAD DATA INFILE command, which allows bulk data loading and is better suited for large datasets. This was identified as a technical improvement opportunity for future projects.
Despite using a subset of the data, the sample size remained sufficient to identify meaningful sales patterns and trends.
The importing error has highlighted the importance of choosing efficient data ingestion methods when working with larger datasets.

## Analytical Methodology
The analysis followed a structured workflow to move from raw transactional data to business insights.

To move from raw transactional data to business insights, I followed a structured analytical workflow starting with data exploration and validation in MySQL. SQL aggregation queries were used to calculate key performance metrics such as total revenue, order volume, quantities sold, and average ratings, while also segmenting performance by product category, region, and time trends. The results were then imported into Excel where pivot tables were used to further explore patterns and confirm trends. A data model was created to connect the different summary tables, allowing slicers to filter multiple visuals and support interactive analysis. The process concluded with the development of an interactive dashboard designed to highlight key performance drivers and answer the project’s main business questions.

## Executive Summary Insights

#### Overall Business Performance
* Total Revenue Generated: $9 882 000,22
* Total Order Volume: 14 999
* Total Quantities Sold: 45 306
* Average Rating: 2,99
  
#### Product Category Performance

* ##### Revenue vs. Volume
  Insight: Electronics and Home & Kitchen lead in total revenue, while Fashion and Beauty dominate in total unit volume.
  
  Business Impact: High-ticket items provide the primary cash flow, whereas high-volume categories ensure consistent inventory turnover and customer acquisition.
* ##### Quality & Sentiment (Ratings)
  Insight: Books and Beauty maintain the highest average ratings despite not being the primary revenue drivers.
  
  Business Impact: These categories serve as "Trust Anchors," driving brand loyalty and high customer satisfaction across the platform.
  
All categories show tight competition with negligible performance gaps in revenue, volume, or sentiment metrics. This parity indicates a robust marketing strategy and healthy manufacturing standards that successfully support every product segment.

* #### Market Leadership: The Middle East Anchor
  Insight: The Middle East is the primary growth engine, leading across all key performance indicators including revenue, order volume, and customer engagement.
  
  Business Impact: This region serves as the operational benchmark for high-velocity sales and customer satisfaction, providing a blueprint for optimizing other     territories.
* #### Secondary Tier Stability: North America & Global Interplay
  Insight: North America maintains consistent second-place performance in volume and revenue, while Asia and Europe remain highly competitive in the third and       fourth positions.
  
  Business Impact: The shifting rankings between Asia and Europe indicate a "tight" market where small tactical adjustments in marketing or logistics could easily   trigger a rank advancement.
* ##### Geographic Parity & Risk Mitigation
  Insight: No single region is a "laggard"; the performance gap between the top and bottom tiers remains narrow across all metrics.
  
  Business Impact: This balanced distribution minimizes geographic dependency and confirms that the business is not over-leveraged in any single market, ensuring    long-term stability.
  
Regional analysis confirms a high-performing global footprint characterized by a clear market leader in the Middle East and strong competitive parity among all other geographic territories. This uniformity suggests a scalable logistical infrastructure and a brand message that translates effectively across diverse markets.







#### Key Insights Summary
