# Data Cloud + Snowflake Integration (Demo Use Case)

This repository demonstrates how a **Salesforce Data Cloud Solution Engineer** can unify external data from **Snowflake** and visualize it in **CRM Analytics**.  
It’s a realistic **enablement-style demo** based on customer scenarios — not an interview exercise.

---

### 🎯 Scenario: Retail Order Unification
A retail company stores e-commerce orders in Snowflake but wants real-time insights in Salesforce.  
This demo shows how to:
- Create a Snowflake table from sample order data  
- Clean and export it for Data Cloud ingestion  
- Build a CRM Analytics dashboard to visualize “Orders by Region” with dynamic per-user filters

---

### 🧱 Architecture
Snowflake (raw → cleaned) → Python export (CSV/API) → Salesforce Data Cloud (DMO) → CRM Analytics (Dashboard)

---

### 🧩 Repository Contents
| Path | Description |
|------|--------------|
| `data/sample_customer_orders.csv` | Demo dataset (synthetic retail orders) |
| `scripts/snowflake_data_load.sql` | SQL to create and populate the Snowflake table |
| `scripts/export_to_datacloud.py` | Python script that shapes data for Data Cloud ingestion |
| `images/architecture_diagram.png` | Architecture diagram |
| `docs/demo_story.md` | Full business story and enablement context |
| `scripts/redshift_data_load.sql` | SQL to create and load Redshift demo table for Data Cloud integration |
---

### 🧪 How to Reproduce
1. **Run SQL** – Execute `scripts/snowflake_data_load.sql` in Snowflake.  
2. **Export Data** – Use the Python script to generate a CSV for Data Cloud.  
3. **Ingest to Data Cloud** – Create a data stream in Salesforce Data Cloud using the exported CSV.  
4. **Visualize** – Build a simple CRM Analytics chart (Sum of Amount by Region) filtered by user.  

---

### 💬 Demo Talking Points
- Data Cloud as the unified customer 360 platform  
- External data integration patterns (Snowflake, BigQuery, Databricks)  
- Visualization via CRM Analytics dynamic bindings  
- Foundation for Agentforce personalization  

---

### 🧠 Intended Audience
Salesforce Solution Engineers, Data Cloud practitioners, and Trailblazer community members exploring practical integration demos.

---

### 📚 Related Reading
- [Dynamic Dashboard Filters in CRM Analytics + Data Cloud (LinkedIn Article)](https://www.linkedin.com/in/lakshmi-achary)
- [Salesforce Blogger Post - CRM Analytics Dynamic Dashboard Filter Options with Data Cloud](https://salesforceblogger.com/2024/04/22/crm-analytics-dynamic-dashboard-filter-options-with-data-cloud/)

---

### 📄 License
MIT © Lakshmi Achary  
*(Sample demo for community enablement — not affiliated with Salesforce.)*
