-- ============================================================
-- EXPLORATORY DATA ANALYSIS
-- ============================================================

-- Business Question:
-- How many customers are included in the dataset?

SELECT
    COUNT(*) AS Total_Customers
FROM customer_data;

-- ============================================================
-- Business Question:
-- What is the educational distribution of customers?
-- ============================================================

SELECT
    Education,
    COUNT(*) AS Customer_Count
FROM customer_data
GROUP BY Education
ORDER BY Customer_Count DESC;


-- ============================================================
-- Business Question:
-- What is the income distribution?
-- ============================================================

SELECT

    MIN(Income) AS Minimum_Income,

    MAX(Income) AS Maximum_Income,

    ROUND(AVG(Income),2) AS Average_Income

FROM customer_data;


