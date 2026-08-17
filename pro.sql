-- 1. Using CTEs and Window Functions for Sales Rank
WITH Sales_CTE AS (
    SELECT 
        category, 
        product_name, 
        SUM(sales_amount) as total_sales
    FROM transactions
    GROUP BY category, product_name
)
SELECT 
    category, 
    product_name, 
    total_sales,
    DENSE_RANK() OVER (PARTITION BY category ORDER BY total_sales DESC) as rank_in_category
FROM Sales_CTE;

-- 2. Running Total for Sales
SELECT 
    transaction_date, 
    SUM(sales_amount) OVER (ORDER BY transaction_date) as running_total
FROM transactions;

-- 3. Optimization using EXPLAIN ANALYZE
-- Run this BEFORE adding indexes to see the bottleneck
EXPLAIN ANALYZE 
SELECT * FROM transactions WHERE customer_id = 505;

-- Optimization: Add Index
CREATE INDEX idx_customer_id ON transactions(customer_id);

-- Run this AFTER adding indexes to see the performance boost
EXPLAIN ANALYZE 
SELECT * FROM transactions WHERE customer_id = 505;
