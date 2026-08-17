## 🚀 Key Highlights
* Advanced SQL: Usage of RANK(), DENSE_RANK(), and LAG() for trend analysis.
* Complex Data Logic: Utilizing CTEs for modular and readable query architecture.
* Optimization First: Implementing B-Tree indexing on high-traffic columns.
* Execution Analysis: Using EXPLAIN ANALYZE to compare performance between unoptimized and optimized queries.

## 📁 Project Structure
* schema.sql: Database table creation and indexing scripts.
* queries.sql: Optimized analytical queries.
* analysis_report.txt: Comparison of query execution time (Before vs. After Optimization).

## 🛠️ How to Optimize
1. Run schema.sql to set up the environment.
2. Run EXPLAIN ANALYZE on standard queries.
3. Apply CREATE INDEX on frequently joined/filtered columns (customer_id, transaction_date).
4. Re-run EXPLAIN ANALYZE to see the reduction in execution cost.

## 📄 License
This project is licensed under the MIT License.
