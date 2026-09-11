# 📊 Marketing Campaign Analytics

### Customer Behavior • Revenue Analysis • Customer Segmentation • Marketing Insights

---

## 📌 Project Overview

This project presents an end-to-end **Marketing Campaign Analytics** analysis focused on understanding customer demographics, purchasing behavior, product spending, customer value, and marketing-related insights.

The analysis transforms raw customer-level data into actionable business insights using **SQL, Microsoft Excel, and Power BI**. The project follows a structured analytics workflow covering data validation, exploratory analysis, KPI development, customer segmentation, business analysis, and interactive visualization.

The project is particularly focused on answering a key business question:

> **Who are the most valuable customers, what drives their spending behavior, and how can customer data be used to improve marketing decisions?**

---

# 🎯 Business Objectives

The analysis aims to:

- Understand the demographic profile of customers
- Analyze customer income and spending behavior
- Identify high-value customer segments
- Determine the strongest product revenue contributors
- Analyze purchasing behavior across web, store, and catalog channels
- Understand customer activity using recency and purchase frequency
- Identify opportunities for targeted marketing and customer retention
- Provide data-driven recommendations for improving customer engagement and revenue

---

# 🛠️ Tools & Technologies

| Tool | Purpose |
|---|---|
| **MySQL** | Data exploration, validation, KPI analysis & business queries |
| **Microsoft Excel** | Data preparation, calculations & supporting analysis |
| **Power BI** | Interactive dashboards, KPI reporting & visualization |

### SQL Skills Demonstrated

- Data validation
- Duplicate detection
- Aggregations
- `CASE` statements
- Subqueries
- CTEs
- Window Functions
- `RANK()`
- `DENSE_RANK()`
- `ROW_NUMBER()`
- Customer segmentation
- Business KPI analysis

---

# 📂 Repository Structure

```text
Marketing-Campaign-Analytics/
│
├── README.md
├── LICENSE
│
├── SQL/
│   ├── 01_database_setup.sql
│   ├── 02_data_cleaning.sql
│   ├── 03_exploratory_analysis.sql
│   └── 04_business_analysis.sql
│
├── Data/
│   └── marketing_campaign.csv
│
├── PowerBI/
│   └── Marketing-Campaign-Analytics.pbix
│
└── Images/
    ├── dashboard_overview.png
    ├── customer_analysis.png
    ├── product_analysis.png
    └── customer_segmentation.png
```

---

# 🗂️ Dataset

The dataset contains customer-level information covering demographics, income, purchasing activity, product spending, recency, and customer segmentation.

### Customer Information

- Customer ID
- Year of Birth
- Age
- Age Group
- Education
- Marital Status
- Income
- Number of Children
- Number of Teenagers

### Customer Behavior

- Recency
- Number of Deals Purchases
- Number of Web Purchases
- Number of Store Purchases
- Number of Web Visits per Month
- Complaints

### Product Spending

- Wine
- Fruits
- Meat Products
- Fish Products
- Sweet Products
- Gold Products

### Derived Business Metrics

- Total Spending
- Total Purchases
- Customer Segment
- Z-Revenue

---

# 🔎 Exploratory Data Analysis

The initial analysis focused on understanding the structure and characteristics of the customer base.

### Customer Demographics

- Total customer count
- Education distribution
- Marital status distribution
- Age distribution
- Age group analysis

### Income Analysis

- Minimum income
- Maximum income
- Average income
- Average income by education
- Income distribution

### Customer Behavior

- Recency analysis
- Purchase frequency
- Web purchases
- Store purchases
- Catalog purchases
- Deals purchases
- Monthly web visits

---

# 📊 Key Performance Indicators

The analysis tracks the following KPIs:

| KPI | Description |
|---|---|
| **Total Customers** | Total number of customers in the dataset |
| **Total Revenue** | Total customer spending across product categories |
| **Average Income** | Average customer income |
| **Average Spending** | Average customer spending |
| **Average Purchases** | Average number of purchases per customer |
| **Average Recency** | Average number of days since the customer's last purchase |
| **Revenue per Customer** | Average revenue generated per customer |
| **Average Basket Value** | Average spending per purchase |

---

# 📈 Power BI Dashboard

The Power BI dashboard is designed to provide an interactive view of customer behavior and marketing performance.

### Dashboard Areas

#### 1. Executive Overview

Provides a high-level view of:

- Total Customers
- Total Revenue
- Average Income
- Average Spending
- Average Purchases
- Customer Segments

#### 2. Customer Behavior

Analyzes:

- Purchase frequency
- Web visits
- Deal purchases
- Recency
- Purchase channels

#### 3. Customer Segmentation

Explores:

- Customer segments
- Income groups
- Age groups
- Education
- Marital status
- Spending behavior

#### 4. Product & Revenue Analysis

Examines:

- Revenue by product
- Product contribution
- Revenue by customer segment
- Revenue by education
- Revenue by age group

---

## 📸 Dashboard Preview

> Add your Power BI dashboard screenshot here.

```markdown
![Marketing Campaign Analytics Dashboard](Images/dashboard_overview.png)
```

---

# 💡 Key Business Insights

The analysis focuses on four major business areas.

## 1. Customer Value

Customer spending varies considerably across customer groups. Identifying high-spending customers allows marketing teams to prioritize customers with stronger revenue potential.

**Business implication:**  
High-value customers can be targeted with personalized offers, loyalty initiatives, and retention campaigns.

---

## 2. Product Performance

Customer spending is distributed across multiple product categories, including wine, meat, fruits, fish, sweets, and gold products.

**Business implication:**  
Understanding product-level revenue contribution can help marketing teams prioritize promotional campaigns around products with stronger customer demand.

---

## 3. Purchasing Behavior

Customers interact with the business through multiple purchasing channels, including:

- Web
- Store
- Catalog

The dataset also captures web visits and deal-based purchases, allowing purchasing behavior to be compared across customer groups.

**Business implication:**  
Channel-level analysis can help determine where customers are most engaged and where marketing resources should be concentrated.

---

## 4. Customer Segmentation

Customer segments provide a structured way to compare spending behavior and revenue contribution across different customer groups.

**Business implication:**  
Marketing campaigns can be differentiated by customer value and behavioral characteristics rather than using a single strategy for the entire customer base.

---

# 🔬 Advanced SQL Analysis

The project goes beyond basic aggregation and includes advanced SQL techniques to answer business questions.

### Customer Ranking

Customers are ranked based on total spending using window functions.

```sql
RANK() OVER (
    ORDER BY `Total Spending` DESC
)
```

### Top Customers by Segment

A CTE and `ROW_NUMBER()` can be used to identify the highest-value customers within each customer segment.

```sql
WITH CustomerRank AS (

    SELECT
        ID,
        Customer_segment,
        `Total Spending`,

        ROW_NUMBER() OVER (
            PARTITION BY Customer_segment
            ORDER BY `Total Spending` DESC
        ) AS Ranking

    FROM customer_data
)

SELECT *
FROM CustomerRank
WHERE Ranking <= 5;
```

### High-Value Customer Identification

The analysis also identifies customers with:

- High spending
- High income
- Strong purchasing activity
- Recent purchasing behavior

These combinations help identify customers with stronger commercial potential.

---

# 📌 Recommendations

Based on the analysis framework, the following actions can support data-driven marketing decisions:

### 1. Prioritize High-Value Customers

Customers with consistently high spending should receive targeted retention and loyalty initiatives.

### 2. Optimize Product Promotions

Marketing campaigns should prioritize products and categories contributing strongly to overall customer spending.

### 3. Improve Channel Strategy

Web, store, and catalog purchasing behavior should be monitored separately to identify channel-specific customer preferences.
