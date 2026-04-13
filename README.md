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
4. Seasonal Performance
   * How do categories perform across different seasons in terms of revenue and order volume?
   * Which season experiences peak sales, and which categories thrive in that season?
5. Growth Analysis Trend
   * How do revenue and order volume perform monthly over the timeline?
   * What trends are revealed by the MoM% change in revenue and order volume across the timeline?
   * Are there periods of consistent growth or decline?
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
![DataModel]()

To enable seamless interactivity across the dashboard, the multiple query result tables were transformed from a flat table analysis struvture to a relational data model using Excel Power Pivot. Used power pivot to create a mutli-fact relationship model centered around three lookup tables: dim_Region, dim_ProductCategory and dim_Year. By establishing 1-to-many relationships, I ensured that a single filter selection will filter across all the different SQL query outputs simultaneously.


SQL was used to validate the data and transform it into valuable insights. SQL aggregation queries were used to calculate performance metrics such as total revenue, units sold, order volume, and average ratings, while also segmenting performance by region, product category, and time. 
Each of the query results was imported into Excel, where pivot tables and charts were used to explore patterns and confirm trends.
Using Excel PowerPivot, a data model was created to connect the different summary tables, allowing slicers to filter multiple visuals and support interactive analysis.
The process concluded with the development of an interactive dashboard designed to highlight key performance drivers and answer the project's main business questions.

#### Data Modelling Process


## Dashboard

![Dashboard](https://github.com/sxalisa003-alt/Amazon_Sales/blob/8ff8cd3bac6dee2b0c8c1b331b468e0ebb84b145/Images/AmazonSalesDash.png)


## Executive Summary Insights
###### Check the dashboard above for reference or click to  [download Interactive Dashboard (Excel)](./Amazon%20Sales%20Dashboard.xlsx)


#### Overall Business Performance
* Total Revenue Generated: $9 882 00,44
* Total Order Volume: 14 999
* Total Units Sold: 45 306
* Average Rating: 2,99

#### Product Category Performance 
* Leading Category in Revenue Generation: Electronics at $801 318,61
* Leading Category in Units Sold: Fashion at $7 678
* Leading Category in Average Ratings: Books at 3,01 
##### Insight
A category can generate the most revenue without having the highest units sold or average rating. This suggests that revenue is heavily influenced by the pricing of products or product mix rather than sales volume or customer ratings. 
All categories show a relatively small gap in revenue, units sold, or ratings, indicating a balanced performance across the categories, which may reduce revenue risk by preventing overdependence on a single category.


#### Regional Performance Analysis
* Leading Region in Revenue Distribution: Middle East at $1 202 154,5
* Leading Region in Order Volume: Middle East at 3804
* Leading Region in Total Customer Reviews submitted: Middle East at 943371
##### Insight
The Middle East emerges as the strongest performing region, leading across all key performance indicators, including revenue, order volume, and review count. North America consistently ranks second across all measures, while Europe and Asia remain competitive in the third and fourth positions. 
The small performance gaps between Europe and Asia suggest a competitive regional landscape where relatively small performance improvements could influence ranking positions, indicating potential growth opportunities in both regionsns. 

#### Seasonal Performance
##### Insight
Seasonal analysis shows relatively consistent performance across product categories in both years(2022 and 2023), with Summer and Autumn generally generating the highest revenue and order activity. Electronics, Fashion, and Home & Kitchen categories frequently appear among the top contributors across multiple seasons. 

Clustering revenue into seasons supports the stability observed in the monthly and month-over-month performance analysis, with no dramatic shifts in product category performance. This suggests that product category performance is not heavily dependent on seasonal shifts but is rather sustained by customer demand.

### Payment Method

* Leading Payment Method: Unified Payments Interface (UPI)
The dataset does not provide sufficient variables, such as customer demographics, transaction success rate, or repeat purchase behaviour, to establish a meaningful relationship between payment methods and sales performance. 
## Detailed Analysis and Trends

### Growth Analysis Trend

#### Monthly Trends (January 2022-December 2023)
![MonthlyTrends](https://github.com/sxalisa003-alt/Amazon_Sales/blob/076725b5724905477f422013dca5195aa83fff00/Images/Monthly%20Trend.png)

Across 2022 and 2023, we observe consistent seasonal fluctuations rather than drastic shifts in revenue. Both years began with relatively strong revenue performance in January, followed by a noticeable decline in February, and then recovered in March. A gradual slowdown in performance is observed from April until mid-year, then followed by a recovery period around August. We also observe that revenue fluctuates moderately toward year-end with minor improvements or declines.
The total revenue generated shows slight and sustainable growth from $2 33M in 2022 to $2 38M in 2023, indicating stable YoY performance rather than aggressive growth. 

Order volume follows a similar trend to revenue, showing steady fluctuation with no significant spikes or drops. February consistently records lower sales in both years, suggesting a seasonal slowdown. MoM comparisons across the two years show a very similar pattern, reinforcing the consistency of demand behaviour.

Both order volume and revenue maintain a consistent pattern across both years, suggesting a stable demand cycle and predictable seasonal purchasing behaviour.

#### Month-Over-Month Growth (January 2022- December 2023)
![MoM](https://github.com/sxalisa003-alt/Amazon_Sales/blob/ea46298537bc06931ca5b1d8776bd71c9e3ec949/Images/MoM.png)

MoM analysis shows relatively stable growth behaviour across the years, with no extreme spikes or sharp downturns in either revenue or order volume. Instead, performance increases at a moderate pace and follows predictable corrections.

Both 2022 and 2023 show similar growth trends:
*  Noticable decline in February following a stronger January performance
*  Strong recovery in March
*  Gradual slowdowns between April and mid-year
*  Recovery periods around July/August
*  Moderate fluctuations towards year-end

Even though 2023 follows nearly the same structure as 2022, differences appear in the timing of recovery periods. The recovery period occurs slightly earlier in 2023 (July instead of August), suggesting an improvement in the recovery strategy implemented and showing stronger order growth momentum compared to the previous year. 

MoM patterns remain consistent across both years, indicating stable operational performance and predictable customer demand cycles rather than volatile growth behaviour. The absence of extreme MoM volatility suggests that revenue growth is organic and stable rather than driven by short-term promotional spikes.

### Rating Analysis
![RatingImpact](https://github.com/sxalisa003-alt/Amazon_Sales/blob/8a94d5abf82a008b67881fa664b392527591e3fe/Images/Ratings%20Impact.png)

Analysis of product rating against revenue, units sold, and order volume shows that highly rated products do not consistently outperform low-rated products. While ratings of 4,0 and 3,5 rank among the strongest performers across revenue and sales volume, lower ratings such as 1,5 also appear among the top performers in units sold, order volume, and revenue generated.

Lower-rated products among  the top sellers suggest that purchasing decisions may be driven by price, availability, or necessity rather than customer satisfaction alone.

### Discount Effectiveness Analysis
![PromoImpact](https://github.com/sxalisa003-alt/Amazon_Sales/blob/8a94d5abf82a008b67881fa664b392527591e3fe/Images/PromoImpact.png)
Moderate discount levels produce stronger sales performance compared to lower discount levels, such as 0% and 10%. Units sold tend to increase as discounts increase, suggesting customers are responsive to price reductions.
Revenue performance shows a slightly different pattern. Higher discount bands generate more revenue than lower discount bands. The difference between the revenue generated by the different discount tiers is not too significant, which indicates that revenue remains relatively stable even with changes in discounts.

The discount tiers also reveal an interesting pattern. 0% discount falls among the low-performing discount tiers. 5% discount performs strongly, and then 10% discount drops again. Then we have the high-tier discounts (15%-30%). This pattern suggests that discount performance may not be purely linear.

Two high-performing discount tiers were observed at approximately 5% and 30%. 
                


### Conclusion
The analysis has revealed that Amazon is stable and has a predictable performance pattern rather than volatile growth patterns. Revenue and order trends remain consistent in both years, suggesting a mature demand cycle and steady customer purchasing behavior. 
* Product category performance shows balanced revenue distribution, reducing reliance on a single category and strengthening  the stability of revenue.
* Regional analysis highlighted the Middle East as the strongest market, and Europe and Asia show competitiveness, suggesting future growth opportunities.
* Customer ratings or reviews seem to have very limited influence on sales performance (possibly due to the insufficient variables, i.e., review content), suggesting that purchasing decisions may be driven by pricing and product demand rather than customer satisfaction alone.
* Discount analysis shows that both small (5%) and big (30%) discount strategies can effectively drive sales performance, indicating flexibility in promotional strategy design.

Overall, the dataset suggests that Amazon has reached maturity stage and is generating stable revenue, has predictable demand patterns, diversified product performance, and a responsive pricing strategy.

### Recommendations

* Implement targeted promotions or marketing campaigns during the historically weaker months to stimulate revenue generation and smooth out fluctuations in revenue.
* Investigate the reason behind the lower average ratings to identify potential product quality or service improvement opportunities.
* Investigate the Asian and European markets further to identify small performance gaps that could be addressed through localized marketing or logistics improvements.
* Future analysis would benefit from Customer demographic data, Profit margin data, and Customer retention metrics.






















