# Demo Story — Connecting Data Cloud with Snowflake

## 🎯 Business Scenario
A retail company (“CloudMart”) wants to unify e-commerce order data stored in **Snowflake** with **Salesforce Data Cloud**.  
The goal is to create a single source of truth for analytics and AI-powered recommendations through **Agentforce**.

## 🚀 Challenge
Customer and order data live in Snowflake, disconnected from CRM.  
The analytics team lacks real-time insights and personalized dashboards.

## 🧩 Solution Overview
1. Use Snowflake to clean and aggregate order data.  
2. Export the dataset for ingestion into Salesforce Data Cloud.  
3. Build dashboards in CRM Analytics using Data Cloud direct queries.  
4. Extend to Agentforce for next-best-action automation.

## 🧱 Architecture
```
Snowflake (Orders) → Python CSV Export → Salesforce Data Cloud → CRM Analytics → Agentforce
```

## 💡 Key Takeaways
- Demonstrates how Salesforce Data Cloud connects to external data platforms.  
- Realistic for Solution Engineers to use in discovery or demo sessions.  
- Uses synthetic data and lightweight setup (no paid Snowflake account needed).

## 🧠 Intended Audience
Salesforce Solution Engineers, Data Cloud practitioners, and Trailblazer community members.

## 🪶 License
MIT © Lakshmi Achary  
*(Demo content for community enablement — not affiliated with Salesforce.)*
