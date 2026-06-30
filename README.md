#  Amazon Sales Performance Dashboard (2022–2023)

##  Project Overview
This project transforms a flat Amazon sales dataset into a relational business intelligence tool. We evaluate revenue drivers, regional growth trends, and promotional discount strategies to provide executive, marketing, and sales leadership with an actionable blueprint for inventory management and global marketing spend.

###  The Business Problem
As a rapidly scaling e-commerce brand expanding internationally, our leadership teams need answers to core operational questions: Which product categories yield steady returns? How do customer preferences differ across new geographical regions? What is the optimal discount sweet spot to flush inventory without wiping out unit profit margins? 

This project bridges data validation in SQL with interactive visual analytics in Excel to provide those answers.

>  **Tech Stack & Skills Used:** SQL (Data Validation & Aggregation), Microsoft Excel, Data Normalization, Power Pivot (Relational Modeling), Dashboard Design, and Business Analysis.

---

##  Interactive Dashboard Preview
*dynamic dashboard coming soon!*


*(To stress-test historical performance across specific seasonal windows or transactional categories, utilize the synchronized slicer matrix highlighted on the left panel of dashboard).*

---

##  Executive Q&A: Key Business Insights

### Q1: What is the overall health of our sales pipeline, and are we growing?
* **The Insight:** The business has reached a stable, mature stage characterized by highly predictable, organic customer demand cycles rather than volatile growth spikes.
* **The Data:** Total revenue shows steady, sustainable growth, moving from **$2.33M in 2022 to $2.38M in 2023**. Month-over-month (MoM) data highlights an identical seasonal pattern for both years: strong sales in January, a sharp correction and drop in February (seasonal slowdown), a robust recovery in March, followed by a mid-year deceleration before an August rally. 
* **Business Action:** Stop hunting for aggressive, short-term spikes. Focus on maximizing operational efficiency and launching targeted promotional campaigns in historically weaker months (February and mid-year) to smooth out these predictable dips.

---

### Q2: Which product categories drive our revenue, and do customer ratings impact their success?
* **The Insight:** Revenue risk is well-insulated because performance is balanced across core categories. Surprisingly, **low customer ratings do not stop products from selling.**
* **The Data:** Electronics, Fashion, and Home & Kitchen remain our top seasonal drivers. However, category revenue is heavily dictated by price point and product mix rather than sheer unit velocity. Products rated **4.0** and **3.5** perform strongly, but lower ratings(even down to **1.5** )frequently rank among the top performers in total revenue and units sold.
* **Business Action:** Category demand is driven by price and necessity rather than customer satisfaction alone. Sales teams should continue to stock high-demand baseline goods regardless of reviews, while marketing should investigate low-rated top sellers to fix product or service issues before competitors exploit them.

---

### Q3: Where should we focus our international marketing and logistics expansion?
* **The Insight:** The **Middle East** is our absolute revenue engine, but **Europe and Asia** represent massive, untapped catching-up opportunities.
* **The Data:** The Middle East leads globally across all key performance indicators, including total revenue, order volume, and review count, with North America securely in second place. Europe and Asia are neck-and-neck in third and fourth. The margin between Europe and Asia is incredibly small, making the ranking highly competitive.
* **Business Action:** Defend our dominant position in the Middle East with premium customer retention campaigns. Meanwhile, launch localized marketing and logistics upgrades in Europe and Asia, where even a minor operational improvement will drastically shift our market share and unlock fresh regional growth.

---

### Q4: Which discount tiers actually maximize revenue and inventory velocity?
* **The Insight:** Customer responsiveness to price cuts is non-linear. Massive discount drops aren't always necessary; instead, we see a "bimodal" sweet spot where both small and large discount strategies thrive.
* **The Data:** A **0% discount** tier underperforms significantly, and a **10% discount** causes a temporary drop in order volume momentum. However, two specific, clear-cut winning tiers emerge:
  
| Sweet-Spot Discount Tier | Strategy Type | Retail & Inventory Outcome |
| :--- | :--- | :--- |
| **5% Discount** | **High-Margin/Velocity** | Performs exceptionally well; drives volume without sacrificing unit profitability. |
| **15% – 30% Discount** | **High-Volume/Clearance** | Generates maximum inventory velocity and units sold, while keeping total revenue stable. |

* **Business Action:** Use a two-pronged promotional framework. Deploy a **5% discount** for everyday, high-margin velocity on core items. Save the **30% discount** tiers strictly for high-volume clearance cycles to rapidly flush inventory through the warehouse without harming baseline revenue scales.

---

##  Methodology & Data Architecture

###  Technical Constraint: Data Ingestion
To bypass the performance constraints of individual `INSERT INTO` statements within the MySQL Import Wizard (which slows down loading times significantly by parsing individual lines), an optimized subset of **14,999 records** from the original 50,000 record dataset was used for this dashboard iteration. The sample size remains statistically sufficient to trace accurate performance patterns. Moving forward, large-scale ingestion pipelines will switch to the `LOAD DATA INFILE` command for bulk loading.

## Forward-Looking Recommendations

* **Targeted Off-Season Promotions:** Deploy specialized marketing campaigns during historically slower months (February and mid-year) to smooth out the revenue curve.

* **Qualitative Review Text Mining:** Investigate the underlying reasons behind the 1.5 - 3.0 star ratings on top-selling products to correct quality control loops before competitors react.

* **Infrastructure Expansion:** Future dashboard iterations would benefit heavily from tracking Customer Demographics, Net Profit Margin percentages, and Customer Retention/Churn metrics.

---
## Technical Deep-Dive & Academic Process

Are you a technical recruiter or data engineer looking for the step-by-step database and report logic?
Check out the [Full Technical & Process Log(Technical_Log.md)](Technical_Log.md) to view the complete data validation pipeline, query optimization details, and step-by-step methodologies.

---
