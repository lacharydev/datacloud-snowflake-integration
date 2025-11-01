-- Snowflake POC: create table and load sample data
-- Adjust DB/SCHEMA/FILE paths as needed

CREATE OR REPLACE TABLE CUSTOMER_ORDERS (
  OrderId STRING,
  CustomerId STRING,
  AccountId STRING,
  OrderDate DATE,
  Amount NUMBER(10,2),
  Region STRING
);

-- Option A: Use Snowflake UI to load CSV into CUSTOMER_ORDERS from data/sample_customer_orders.csv
-- Option B: snowsql PUT/GET stage approach (not shown here for brevity)

-- Example aggregation you can demo in Snowflake:
-- SELECT AccountId, Region, COUNT(*) AS order_count, SUM(Amount) AS total_amount
-- FROM CUSTOMER_ORDERS
-- GROUP BY AccountId, Region
;