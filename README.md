# Amazon Sales Project | SQL & Excel Bi

## Project Overview
This project examines an Amazon Sales dataset to investigate how product categories, regions, payment methods, and time trends affect revenue generation, order volume, and units sold. Through this examination, we will also investigate the connection between elements like ratings, discounts, and the number of reviews with the sales outcomes. The objective is to reveal essential business factors and trends that can help in making informed decisions.
This project combines data cleaning, EDA, and dashboard creation to transform raw sales data into meaningful and actionable insights.

## Business Questions
1. Overall Business Performance
   * What is the Total Revenue Generated, Total Units Sold, Total Order Volume, and the Average Rating
2. Product Category Performance
   * How much revenue does each category generate?
   * How many units were sold in each category?
   * What is the average rating per category?
3. Regional Performance Analysis
   * How much revenue does each region generate?
   * Which regions show the highest activity based on order volume, average ratings, and number of reviews?
4. Growth Analysis Trend
   * How does revenue perform monthly over the timeline?
   * What trends are revealed by the MoM% change in revenue and order volume across the timeline?
   * Are there periods of consistent growth or decline?
5. Seasonal Performance
   * How do categories perform across different seasons in terms of revenue and order volume?
   * Which season experiences peak sales, and which categories thrive in that season?
6. Ratings Analysis
   * How does product rating affect revenue generation and units sold?
   * Do high-rated products consistently generate high revenue and sales?
7. Payment Method Analysis
   * Does the payment method used influence order volume?
8. Discount Strategy Analysis
   * Does a high discount lead to high generation of revenue and order volume?
   * Is there an optimum discount range that maximizes performance?
  

  ## Tool 
  * MySQL Workbench
  * Visual Studio Code
  * Microsoft Excel
  * Github
  * Microsoft PowerPivot

  ## Skills
  * Database Management
  *  Data Modeling
  *  Data Visualization
  *  Version Control
  *  Exploratory Data Analysis
  *  Reporting
  *  Dashboard Development
  

  ## Data Integrity & Constraints

  ### Data Integrity
  An SQL script was run to validate the dataset and ensure that it was suitable for analysis. The script ran checks to identify missing values, duplicates, validate numeric fields like revenue and quantity sold, and verify data consistency. The dataset was found to have no significant anomalies or inconsistencies; no major data cleaning or transformation was needed.
  ###### The Data Validation Script is available in the project repository

  ### Constraints
  For the project, I used 14,999 records from the 50,000 records in the original dataset due to the importing technique I used, MySQL Import Wizard. This method generates individual INSERT INTO statements for each record, therefore slowing down the loading process. A much more efficient approach would have been to use the LOAD DATA INFILE command, which allows bulk loading and is better for large datasets. 
Despite using a subset of the data, the sample size may remain sufficient to identify meaningful patterns and trends.

This importing error has highlighted the importance of choosing efficient data ingestion methods when working with large datasets.

## Data Wrangling Process

SQL was used to validate the data and transform it into valuable insights. SQL aggregation queries were used to calculate performance metrics such as total revenue, units sold, order volume, and average ratings, while also segmenting performance by region, product category, and time. 
Each of the query results was imported into Excel, where pivot tables and charts were used to explore patterns and confirm trends.
Using Excel PowerPivot, a data model was created to connect the different summary tables, allowing slicers to filter multiple visuals and support interactive analysis.
The process concluded with the development of an interactive dashboard designed to highlight key performance drivers and answer the project's main business questions.

## Executive Summary Insights
###### Check the dashboard above for reference. 

#### Overall Business Performance
* Total Revenue Generated $9 882 00,22
* Total Order Volume 14 999
* Total Units Sold 45 306
* Average Rating 2,99

#### Category Performance 
* Leading Category in Revenue Generated: Electronics
* Leading Category in Order Volume: Fashion
* Leading Category in Average Ratings: Books & Beauty
##### Insight :
A category can generate the most revenue and still not have the highest units sold or average rating. This implies that revenue is not reliant on units sold or ratings made by customers. 
All categories show a tight competition with no significant performance gaps in revenue, sales volume, or ratings. This parity indicated a strategic and well-executed marketing strategy and healthy manufacturing standards that support every product category.





