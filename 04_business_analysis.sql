-- ============================================================
-- KPI 1
-- Total Customers
-- ============================================================

SELECT
    COUNT(*) AS Total_Customers
FROM customer_data;

-- ============================================================
-- KPI 2
-- Total Revenue Generated
-- ============================================================

SELECT 
    SUM(MntWines + MntFruits + MntMeatProducts + MntFishProducts + MntSweetProducts + MntGoldProds) AS Total_Revenue
FROM
    customer_data;


-- ============================================================
-- BUSINESS QUESTION
-- Revenue by Customer Segment
-- ============================================================

SELECT
    Customer_Segment,
    SUM(`Total Spending`) AS Revenue
FROM customer_data
GROUP BY Customer_Segment
ORDER BY Revenue DESC;

-- ============================================================
-- BUSINESS QUESTION
-- Customers With vs Without Children
-- ============================================================

SELECT 
    CASE
        WHEN Teenhome + Kidhome = 0 THEN 'No Children'
        ELSE 'With Children'
    END AS Family_Type,
    COUNT(*) AS Customers
FROM
    customer_data
GROUP BY Family_Type;


-- ============================================================
-- BUSINESS QUESTION
-- Customer Income Segments
-- ============================================================

SELECT 
    CASE
        WHEN Income < 30000 THEN 'Low Income'
        WHEN Income BETWEEN 30000 AND 60000 THEN 'Middle Income'
        WHEN Income BETWEEN 60001 AND 90000 THEN 'Upper Middle Income'
        ELSE 'High Income'
    END AS Income_Group,
    COUNT(*) AS Customers
FROM
    customer_data
GROUP BY Income_Group
ORDER BY Customers DESC;

-- ============================================================
-- BUSINESS QUESTION
-- Customer Activity Based on Recency
-- ============================================================

SELECT 
    CASE
        WHEN Recency <= 30 THEN 'Active'
        WHEN Recency <= 60 THEN 'Warm'
        ELSE 'Inactive'
    END AS Customer_Status,
    COUNT(*) AS Customers
FROM
    customer_data
GROUP BY Customer_Status;

/*======================================================================

Analysis Completed

Business Questions Answered

✔ Customer Demographics

✔ Customer Segmentation

✔ Income Analysis

✔ Revenue Analysis

✔ Marketing KPIs

✔ Spending Behaviour

✔ Customer Activity

✔ Campaign Performance

======================================================================*/
