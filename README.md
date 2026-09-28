# Customer Behavior & Revenue Analytics

## Project Overview

Customer data is useful only when a business can translate it into clear decisions.

This project analyzes customer purchasing behavior to answer four important business questions:

- Who are the most valuable customers?
- How concentrated is revenue across the customer base?
- Are customers returning, becoming inactive, or churning?
- What customer, product, and regional factors are driving customer value?

I built an end-to-end analytics solution using **MySQL, Power BI, DAX, RFM Analysis, and business-focused SQL analysis**.

The final solution contains a Home Page and four analytical dashboard pages:

1. Executive Overview
2. Customer Segmentation & Value
3. Retention & Churn
4. Customer Drivers & RCA

---

# Business Problem

The business had customer, order, product, review, and return data, but there was no single analytical view to understand:

- which customers generate the most value,
- how dependent revenue is on a small group of customers,
- whether customers are returning after purchasing,
- which customers are becoming inactive,
- how much historical revenue is associated with at-risk customers,
- which product categories are preferred by different customer segments,
- and how customer value varies across regions.

The objective was not only to build a dashboard.

The objective was to move from:

**Business Problem → KPI → Variance → Drill-down → Root Cause → Insight → Recommendation → Business Action**

---

# Why I Built This Project

Many beginner analytics projects stop at showing revenue, sales, and customer counts.

I wanted this project to go further and answer:

> “What should the business do after seeing the dashboard?”

That is why the project combines:

- descriptive KPIs,
- customer segmentation,
- revenue concentration,
- retention analysis,
- churn analysis,
- purchase-frequency analysis,
- category preference,
- regional customer value,
- and root-cause investigation.

---

# Tools & Technologies

- **MySQL** — ad-hoc business analysis and RFM segmentation
- **Power BI** — dashboard development and interactive analysis
- **DAX** — KPIs, retention, churn, revenue, customer behavior metrics
- **Power Query** — data preparation and type handling
- **Data Modeling** — fact/dimension relationships
- **RFM Analysis** — customer behavioral segmentation

---

# Data Model

The Power BI model uses transaction and dimension tables including:

### Dimension Tables

- `dim_date`
- `dim_customers`
- `dim_products`
- `dim_category`
- `customer_rfm`

### Fact Tables

- `fact_orders`
- `fact_order_items`
- `fact_returns`
- `fact_reviews`

The main analytical flow is:

```text
dim_customers
      |
      v
fact_orders
      |
      v
fact_order_items
      |
      +------ dim_products
                  |
                  v
             dim_category
