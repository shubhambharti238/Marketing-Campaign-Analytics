-- ============================================================
-- DATA QUALITY CHECK
-- ============================================================

-- Check duplicate customers

SELECT
    ID,
    COUNT(*) AS Duplicate_Count
FROM customer_data
GROUP BY ID
HAVING COUNT(*) > 1;
