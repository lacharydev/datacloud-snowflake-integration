# Data Cloud ⇄ Snowflake Integration (POC)

This repository demonstrates a **proof-of-concept** pipeline where **Snowflake** is used as the external data platform and **Salesforce Data Cloud** as the customer 360 hub. We cleanse/aggregate data in SQL/Python, export a shaped dataset, and visualize it in **CRM Analytics**.

> Suitable for Solution Engineer demos — lightweight, reproducible, and easy to extend.

## ⚙️ Architecture
Snowflake (raw → cleaned) → Python export (CSV/API) → Salesforce Data Cloud (ingest) → CRM Analytics (dashboard).

## 🧱 Components
- `data/sample_customer_orders.csv` – seed dataset to load into a Snowflake table.
- `scripts/snowflake_data_load.sql` – SQL to create table & load data.
- `scripts/export_to_datacloud.py` – example exporter to produce a Data Cloud–ready CSV.
- `images/architecture_diagram.png` – diagram for your README/LinkedIn.
- `README.md` – this guide.

## 🚀 Quickstart
1. **Create Snowflake objects**  
   Run `scripts/snowflake_data_load.sql` in Snowflake (UI or snowsql). Update database/schema names as needed.

2. **Export shaped dataset**  
   ```bash
   python scripts/export_to_datacloud.py --input-table CUSTOMER_ORDERS --output ./out/orders_for_datacloud.csv
   ```

3. **Ingest into Data Cloud**  
   - Create a data stream (CSV ingest) referencing `orders_for_datacloud.csv`.
   - Map keys (CustomerId, OrderId, AccountId) and date/amount types.
   - Publish the data model object (DMO).

4. **Visualize in CRM Analytics**  
   - Build a simple table or bar chart (Amount by Account, filtered by logged-in user).  
   - (Optional) Use the **dynamic filter binding** technique from your LinkedIn post to personalize the view.

## ✅ Demo Talking Points
- External platform flexibility (Snowflake/BigQuery/Databricks).
- Real-time analytics via Data Cloud + CRM Analytics.
- Path to AI: Use this shaped dataset as features for Vertex AI or Agentforce actions.

## 📄 License
MIT © Lakshmi Achary
