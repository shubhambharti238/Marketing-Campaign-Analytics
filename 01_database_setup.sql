/*======================================================================
                    MARKETING CAMPAIGN ANALYTICS
=======================================================================

Project      : Marketing Campaign Analytics
Author       : Shubham Kumar Bharti
Database     : MySQL

Description:
This project analyzes customer demographics, purchasing behavior,
marketing campaign performance, and customer segmentation to uncover
business insights that improve campaign effectiveness and maximize ROI.

Tools Used:
• MySQL
• Power BI
• Excel
• Python (Pandas)

Business Questions Answered

✔ Who are our highest-value customers?
✔ Which customer segments generate the highest revenue?
✔ How does income influence spending?
✔ Which campaigns perform best?
✔ Which customers should be targeted?

======================================================================*/

-- ============================================================
-- DATABASE SETUP
-- ============================================================

CREATE DATABASE IF NOT EXISTS marketing_campaign_analysis;

USE marketing_campaign_analysis;

SHOW TABLES;


-- ============================================================
-- DATA INSPECTION
-- ============================================================

DESCRIBE customer_data;

SELECT *
FROM customer_data
LIMIT 10;
