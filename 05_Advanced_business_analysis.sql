-- =================================================================
-- Advanced Business Analysis
-- ================================================================

-- ================================================================
-- Business Question 1
-- Top 10 Highest Spending Customers
-- ================================================================

SELECT 
    ID, Education, Marital_Status, Income, `Total Spending`
FROM
    customer_data
ORDER BY `Total Spending` DESC
LIMIT 10;

-- ================================================================
-- Business Question 2
-- Revenue Contribution by Product Category
-- ================================================================

SELECT 'Wine' AS Product, SUM(MntWines) AS Revenue
FROM customer_data

UNION ALL

SELECT 'Fruits', SUM(MntFruits)
FROM customer_data

UNION ALL

SELECT 'Meat', SUM(MntMeatProducts)
FROM customer_data

UNION ALL

SELECT 'Fish', SUM(MntFishProducts)
FROM customer_data

UNION ALL

SELECT 'Sweets', SUM(MntSweetProducts)
FROM customer_data

UNION ALL

SELECT 'Gold', SUM(MntGoldProds)
FROM customer_data;


-- ================================================================
-- Business Question 3
-- Average Spending by Education
-- ================================================================

SELECT 
    Education,
    ROUND(AVG(`Total Spending`), 2) AS Average_Spending
FROM
    customer_data
GROUP BY Education
ORDER BY Average_Spending DESC;


-- ================================================================
-- Business Question 4
-- Average Spending by Marital Status
-- ================================================================

SELECT 
    Marital_Status,
    ROUND(AVG(`Total Spending`), 2) AS Average_Spending
FROM
    customer_data
GROUP BY Marital_Status
ORDER BY Average_Spending DESC;


-- ================================================================
-- Business Question 5
-- Purchasing Channel Performance
-- ================================================================

SELECT 
    SUM(NumWebPurchases) AS Web_Purchases,
    SUM(NumStorePurchases) AS Store_Purchases
FROM
    customer_data;


-- ================================================================
-- Business Question 6
-- Customer Spending Ranking
-- ================================================================

SELECT
    ID,
    Customer_segment,
    `Total Spending`,
    RANK() OVER(
        ORDER BY `Total Spending` DESC
    ) AS Spending_Rank
FROM customer_data;


-- ================================================================
-- Business Question 7
-- Top Revenue Customer Segment
-- ================================================================

SELECT 
    Customer_segment, SUM(`Total Spending`) AS Revenue
FROM
    customer_data
GROUP BY Customer_segment
ORDER BY Revenue DESC;


-- ================================================================
-- Business Question 8
-- Customer Spending Rank
-- Window Function
-- ================================================================

SELECT

ID,

Income,

`Total Spending`,

RANK() OVER(

ORDER BY `Total Spending` DESC

) AS Spending_Rank

FROM customer_data;


-- ================================================================
-- Business Question 9
-- Dense Rank by Income
-- ================================================================

SELECT
ID,
