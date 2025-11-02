-- AWS Redshift POC: Create table and load sample customer order data
-- This mirrors the Snowflake setup for a unified Salesforce Data Cloud demo.

-- 1️⃣ Create table for demo orders
CREATE TABLE IF NOT EXISTS customer_orders (
    order_id       VARCHAR(20),
    customer_id    VARCHAR(20),
    account_id     VARCHAR(20),
    order_date     DATE,
    amount         DECIMAL(10,2),
    region         VARCHAR(50)
);

-- 2️⃣ Load data from S3 or local CSV
-- Option A: Using COPY command from S3
-- (Assumes your sample_customer_orders.csv is uploaded to S3 and IAM role is configured)
-- Example:
-- COPY customer_orders
-- FROM 's3://your-bucket/sample_customer_orders.csv'
-- IAM_ROLE 'arn:aws:iam::123456789012:role/RedshiftDemoRole'
-- FORMAT AS CSV
-- IGNOREHEADER 1;

-- Option B: Manually insert sample data for quick demo
INSERT INTO customer_orders (order_id, customer_id, account_id, order_date, amount, region)
VALUES
 ('O-1001', 'C-001', 'A-01', '2025-07-01', 120.50, 'West'),
 ('O-1002', 'C-002', 'A-02', '2025-07-03', 85.00,  'West'),
 ('O-1003', 'C-003', 'A-03', '2025-07-05', 460.99, 'East'),
 ('O-1004', 'C-001', 'A-01', '2025-07-06', 230.00, 'West');

-- 3️⃣ Verify data
SELECT * FROM customer_orders LIMIT 10;

-- 4️⃣ Optional aggregation example for CRM Analytics view
SELECT region, COUNT(*) AS order_count, SUM(amount) AS total_revenue
FROM customer_orders
GROUP BY region
ORDER BY total_revenue DESC;

-- ✅ Next Step:
-- Export query results to CSV and ingest into Salesforce Data Cloud
-- for visualization in CRM Analytics dashboard.
