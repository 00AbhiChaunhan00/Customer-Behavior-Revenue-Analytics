<div align="center">

# 📊 Customer Behavior & Revenue Analytics

### Customer Segmentation, Revenue Concentration, Retention, Churn & Root Cause Analysis

**Power BI • MySQL • SQL • DAX • Power Query • RFM Analysis**

<br>

[![Power BI](https://img.shields.io/badge/Power%20BI-Business%20Intelligence-F2C811?style=for-the-badge&logo=powerbi&logoColor=black)](#)
[![MySQL](https://img.shields.io/badge/MySQL-Database-4479A1?style=for-the-badge&logo=mysql&logoColor=white)](#)
[![SQL](https://img.shields.io/badge/SQL-Analytics-336791?style=for-the-badge)](#)
[![DAX](https://img.shields.io/badge/DAX-Analytics-118DFF?style=for-the-badge)](#)

<br>

### 🔵 [View Live Power BI Dashboard](YOUR_POWER_BI_LINK_HERE)

📄 [View Full Dashboard PDF](05_Report/Customer-Behavior-Revenue-Analytics.pdf)

</div>

---

# 📌 Project Overview

This project is an end-to-end **Customer Behavior & Revenue Analytics solution** designed to help a retail business understand not only:

> **“How is the business performing?”**

but also:

> **“Who is driving customer value?” → “Who is becoming inactive?” → “Why is performance different?” → “What action should the business take?”**

The project combines:

- Executive KPI monitoring
- Customer behavior analysis
- RFM customer segmentation
- Revenue concentration analysis
- New vs Returning customer analysis
- Monthly retention analysis
- Customer churn / inactivity analysis
- Purchase-frequency analysis
- Product-category preference analysis
- Regional customer-value analysis
- Return behavior analysis
- Root Cause Analysis
- Business recommendations

The analytical journey is:

```text
RAW CUSTOMER & TRANSACTION DATA
        ↓
MYSQL / SQL ANALYSIS
        ↓
RFM CUSTOMER SEGMENTATION
        ↓
POWER BI DATA MODEL
        ↓
KPI MONITORING
        ↓
VARIANCE & DRILL-DOWN
        ↓
RETENTION / CHURN ANALYSIS
        ↓
ROOT CAUSE ANALYSIS
        ↓
INSIGHT
        ↓
RECOMMENDATION
        ↓
BUSINESS ACTION
```

The objective was to move beyond a traditional sales dashboard and create a solution that supports **customer-focused business decisions**.

---

# 🎯 Business Problem

The business had customer, order, product, review, return and transaction data, but lacked a consolidated analytical view to understand customer behavior.

Management needed answers to questions such as:

### Customer Value

- Which customers generate the highest value?
- Which customer groups contribute most revenue?
- Is revenue concentrated among a small percentage of customers?
- Which customers should receive the highest retention priority?

### Customer Behavior

- How frequently are customers purchasing?
- Which customers are one-time, repeat or high-frequency buyers?
- How much revenue comes from returning customers?
- Which customers are becoming inactive?

### Retention & Churn

- Are customers returning after purchasing?
- How does monthly retention change over time?
- Which customers are at risk of churn?
- How much historical revenue is associated with those customers?

### Product & Category Behavior

- Which categories generate the most customer value?
- Do different RFM segments prefer different categories?
- Are return rates different across customer segments?

### Regional Performance

- Which regions generate the most revenue?
- Which regions contain higher-value customers?
- Does high total revenue also mean high revenue per customer?

### Root Cause Analysis

When customer performance differs:

> **WHY is the difference occurring?**

The solution therefore needed to move from high-level business KPIs into:

```text
Business
   ↓
Customer Segment
   ↓
Customer
   ↓
Purchase Frequency
   ↓
Revenue / Monetary Value
   ↓
Product Category
   ↓
Region
```

to identify the drivers behind customer value and retention risk.

---

# ⭐ Project Story — STAR Framework

<details>

<summary><b>Click to expand — Complete project story</b></summary>

## S — Situation

The business had large amounts of customer and transaction data.

However, simply knowing:

- Revenue
- Orders
- Customers
- Average Order Value

was not enough.

The business also needed to understand:

- which customers were most valuable,
- whether customers were returning,
- which valuable customers were becoming inactive,
- where revenue was concentrated,
- and what factors were driving customer value.

A high customer count does not automatically mean a healthy customer base if valuable customers are not returning.

---

## T — Task

The objective was to create an analytics solution capable of:

1. Monitoring customer and revenue performance.
2. Identifying high-value customers.
3. Segmenting customers using actual purchase behavior.
4. Measuring revenue concentration.
5. Separating new and returning customer behavior.
6. Measuring monthly customer retention.
7. Identifying At-Risk and Churned customers.
8. Analyzing purchase frequency.
9. Investigating regional and category drivers.
10. Converting findings into practical business recommendations.

---

## A — Action

I developed the project using:

### Database & Analysis

- MySQL
- SQL
- CTEs
- Window Functions
- Aggregations
- CASE expressions
- RFM Analysis

### Data Preparation

- Power Query
- Data-type standardization
- Customer/order relationship validation
- Date dimension
- Data-model preparation

### Analytics Logic

- DAX
- Revenue KPIs
- Customer KPIs
- Retention calculations
- Churn calculations
- New vs Returning analysis
- Return Rate
- Purchase Frequency
- Revenue per Customer

### Visualization

I created a Power BI dashboard containing:

- Home Page
- Executive Overview
- Customer Segmentation & Value
- Retention & Churn
- Customer Drivers & RCA

The analytical approach followed:

```text
Business Problem
        ↓
KPI
        ↓
Variance
        ↓
Drill-down
        ↓
Root Cause
        ↓
Insight
        ↓
Recommendation
        ↓
Business Action
```

---

## R — Result / Decision-Support Outcome

The completed analysis showed that customer value is **not evenly distributed across the customer base**.

The RFM analysis revealed that:

- a relatively small group of customers contributes a disproportionately large amount of revenue,
- meaningful historical revenue is associated with customers classified as At Risk,
- customer segments behave differently in terms of frequency and monetary value,
- retention and churn need to be monitored separately from simple repeat purchasing,
- regional customer value differs from total regional revenue,
- and product-category preferences vary across customer segments.

The project therefore supports a decision process of:

> **Monitor → Segment → Detect Risk → Diagnose → Act**

> **Important:** This project demonstrates analytical findings and decision-support recommendations. It does not claim that the recommendations were implemented in a real company or generated measured financial improvement.

</details>

---

# 🧠 Core Business Finding

The central finding from the project is:

> ### Customer value is concentrated, while meaningful historical revenue is also tied to customers at risk of becoming inactive.

The full-history RFM snapshot shows:

| KPI | Result | Business Meaning |
|---|---:|---|
| Champions | **297** | High-value customer group |
| Loyal Customers | **601** | Strong repeat/frequency behavior |
| At-Risk Customers | **297** | Customers requiring retention attention |
| At-Risk Revenue | **₹133.58M** | Historical revenue exposed to customer inactivity |
| Top 20% Customer Revenue Share | **45.53%** | Revenue concentration among high-value customers |

### Business interpretation

Revenue is not distributed equally across customers.

This means losing a high-value customer can have a much greater financial impact than losing a low-value customer.

Retention activity should therefore consider:

```text
Customer Risk
      +
Historical Revenue
      +
Purchase Frequency
      +
Customer Segment
```

instead of treating every inactive customer equally.

---

# 👥 RFM Customer Segmentation

RFM was used to convert transaction history into actionable customer groups.

## Recency

> How recently did the customer purchase?

Lower Recency indicates more recent purchasing activity.

---

## Frequency

> How frequently does the customer purchase?

Higher Frequency indicates stronger repeat-purchase behavior.

---

## Monetary Value

> How much revenue has the customer generated?

Higher Monetary Value indicates greater historical customer value.

---

Customers were grouped into segments such as:

```text
Champions
Loyal
At Risk
New / Promising
Regular
```

### Why RFM?

Traditional customer analysis may only rank customers by revenue.

RFM improves this because two customers generating similar historical revenue can have very different behavior.

Example:

```text
Customer A
Revenue = High
Recent Purchase = Yes
Frequency = High
→ Champion

Customer B
Revenue = High
Recent Purchase = No
Frequency = High
→ At Risk
```

Both are valuable customers, but the business action should be different.

---

# 💰 Revenue Concentration Analysis

One of the major analytical questions was:

> **How dependent is revenue on high-value customers?**

The analysis showed:

> **Top 20% of customers contribute approximately 45.53% of customer revenue.**

### Interpretation

Revenue concentration means customer retention should not be based only on customer count.

The business should continuously monitor:

- Top Customer Revenue Contribution
- Champions
- Loyal Customers
- At-Risk Customers
- At-Risk Revenue

because deterioration within these groups may have a disproportionate effect on revenue.

---

# ⚠️ At-Risk Customer Analysis

A major finding from the RFM snapshot is:

> **At-Risk customers represent approximately ₹133.58M in historical revenue.**

### Why this matters

Customer churn is not only a customer-count problem.

If historically valuable customers become inactive, the business potentially loses future repeat revenue from some of its strongest previous customers.

Therefore customer re-engagement should be prioritized using:

```text
At-Risk Status
      +
Historical Revenue
      +
Frequency
      +
Recency
```

---

# 🔁 New vs Returning Customer Analysis

Customers were separated into:

### New Customer

A customer whose **first-ever purchase occurs in the selected period**.

### Returning Customer

A customer purchasing in the selected period who had already purchased before that period.

This distinction answers:

> Is customer performance being driven by acquisition or by existing customers returning?

### Business value

A business dependent only on continuous customer acquisition may face higher acquisition pressure.

Increasing returning-customer activity can support stronger long-term customer value.

---

# ♻️ Retention Analysis

Monthly retention measures whether customers are purchasing in consecutive months.

For this project:

> **A retained customer purchased in both the previous month and the current month.**

The basic analytical concept is:

```text
Customers in Previous Month
        ∩
Customers in Current Month
        ↓
Retained Customers
```

Retention Rate then compares retained customers with the previous month's customer base.

---

# 🔄 Repeat vs Returning vs Retained

These metrics measure different customer behaviors and should not be treated as the same KPI.

### Repeat Customer

Has placed more than one order.

### Returning Customer

Purchased in the selected period and had purchased previously.

### Retained Customer

Purchased in the immediately previous month and again in the current month.

Example:

```text
January  → Customer purchases
February → No purchase
March    → Customer purchases
```

In March:

```text
Repeat Customer    → YES
Returning Customer → YES
Retained Customer  → NO
```

This distinction is important when analyzing customer loyalty and retention.

---

# 🚨 Churn & Inactivity Analysis

The dataset does not contain an official company churn flag.

Therefore churn was modeled using inactivity.

For this project:

```text
Recently Active
     ↓
60+ Days Inactive
     ↓
AT RISK
     ↓
90+ Days Inactive
     ↓
CHURNED
```

### Important

The 60-day and 90-day rules are **analytical assumptions for the portfolio project**.

In a real business, the threshold should be validated against:

- normal purchase cycle,
- product category,
- customer type,
- and business expectations.

---

# 🔢 Purchase Frequency Analysis

Customers were also analyzed according to total purchasing frequency.

Example grouping:

```text
1 Order      → One-Time
2–3 Orders   → Repeat
4–5 Orders   → Loyal
6+ Orders    → High-Frequency
```

### Why it matters

Revenue alone does not show purchasing behavior.

A customer generating high revenue from one large purchase behaves differently from a customer generating similar revenue through frequent repeat purchases.

Frequency therefore supports:

- loyalty analysis,
- customer prioritization,
- repeat-purchase strategy,
- and cross-selling decisions.

---

# 🌍 Regional Customer Value Analysis

The project analyzes both:

```text
Total Revenue by Region
```

and:

```text
Revenue per Customer by Region
```

These answer different business questions.

### Total Revenue

Answers:

> Which region contributes the most overall revenue?

### Revenue per Customer

Answers:

> Which region contains the highest-value average customer?

### Business interpretation

A region may have high total revenue simply because it has more customers.

Another region may generate less total revenue but have significantly higher-value customers.

Therefore management should evaluate:

```text
Customer Count
+
Total Revenue
+
Revenue per Customer
```

together.

---

# 📦 Product Category Preference

Customer behavior was also analyzed using:

> **Category Preference by Customer Segment**

This matrix compares product-category revenue across RFM customer segments.

### Analytical purpose

It helps answer:

- Which categories are strongest among Champions?
- What products are Loyal customers purchasing?
- What categories historically attracted At-Risk customers?
- Where could cross-selling opportunities exist?

### Business interpretation

Product recommendations should not necessarily be identical for every customer.

Segment-specific product behavior can support:

- personalized recommendations,
- category cross-selling,
- targeted promotions,
- and bundle strategies.

---

# ↩️ Return Behavior Analysis

Return Rate was analyzed by customer segment.

The purpose was to determine whether certain customer groups show noticeably different return behavior.

This allows the business to investigate whether return behavior is linked to:

- customer segment,
- category preference,
- purchase frequency,
- or customer expectations.

> **Dataset limitation:** The return table identifies returned order items but does not contain a separate returned-quantity field. Therefore the project assumes the associated order-item quantity is returned when a return record exists.

---

# 🔎 Root Cause Analysis

Traditional dashboards often answer:

> **WHAT happened?**

The Customer Drivers & RCA page was created to move toward:

> **WHY did it happen?**

The project allows investigation across:

```text
Customer Segment
        ↓
Purchase Frequency
        ↓
Monetary Value
        ↓
Product Category
        ↓
Region
        ↓
Return Behavior
```

Example:

```text
Customer Value Difference
        ↓
Which Segment?
        ↓
Frequency / Monetary Behavior
        ↓
Preferred Categories
        ↓
Region
        ↓
Customer Action
```

This turns the dashboard from only a reporting tool into a diagnostic analytical solution.

---

# 🧭 Complete Decision Journey

The dashboard follows this business decision flow:

```text
EXECUTIVE OVERVIEW
        │
        ▼
How is the business performing?
        │
        ▼
CUSTOMER SEGMENTATION
        │
        ▼
Who is creating customer value?
        │
        ▼
RETENTION & CHURN
        │
        ▼
Which customers are being retained or lost?
        │
        ▼
CUSTOMER DRIVERS & RCA
        │
        ▼
Why are customer behaviors different?
        │
        ▼
BUSINESS RECOMMENDATION
        │
        ▼
BUSINESS ACTION
```

The core idea is:

> ### Monitor → Segment → Detect Risk → Diagnose → Act

---

# 📊 Dashboard Pages

| Page | Main Decision Question |
|---|---|
| 🏠 Home | What business questions does the project solve? |
| 📊 Executive Overview | How is customer and revenue performance changing? |
| 👥 Customer Segmentation & Value | Who are the most valuable customers? |
| 🔄 Retention & Churn | Are customers returning and which customers are being lost? |
| 📈 Customer Drivers & RCA | What factors are driving customer value and behavior? |

---

# 🏠 Home Page

The Home Page explains the purpose of the project before the user begins exploring the dashboard.

It introduces four analytical areas:

```text
Customer Segmentation
Revenue Performance
Retention & Churn
Customer Drivers & Deep Dive
```

Instead of displaying fixed analytical values, the Home Page focuses on business questions and decision areas because several dashboard pages use interactive filters.

This prevents static text from becoming inconsistent when users change:

- Date
- Region
- Customer Type

---

# 📊 Executive Overview

The Executive page answers:

> **How is the customer base and revenue performing overall?**

### KPIs

```text
Total Revenue
Total Customers
Total Orders
Average Order Value
Repeat Customer %
Revenue per Customer
```

### Analysis

```text
Active Customers Trend
New vs Returning Customers
Monthly Revenue Trend
Revenue by Region
```

This page establishes the business baseline before deeper customer analysis begins.

---

# 👥 Customer Segmentation & Value

This page answers:

> **Who are our most valuable customers?**

### KPIs

```text
Champions
Loyal Customers
At-Risk Customers
At-Risk Revenue
Top 20% Customer Revenue %
```

### Analysis

```text
Customers by RFM Segment
Revenue by Customer Segment
Top 10 Customers by Revenue
Customer Value by Frequency & Monetary
```

The page combines:

```text
Customer Count
+
Revenue Contribution
+
Frequency
+
Monetary Value
```

to understand where customer value is concentrated.

---

# 🔄 Retention & Churn

This page answers:

> **Are customers coming back and which customers are becoming inactive?**

### KPIs

```text
Retention Rate
Churn Rate
Returning Customers
Churned Customers
Retained Customers
```

### Analysis

```text
Monthly Retention Trend
New vs Returning Customer Revenue
Churned Customers by Region
```

The page helps distinguish:

```text
Customer Acquisition
vs.
Customer Retention
```

while also identifying customer-loss patterns.

---

# 📈 Customer Drivers & RCA

This page answers:

> **What factors are associated with customer value and customer risk?**

### KPIs

```text
Return Rate
Purchase Frequency
Revenue per Customer
```

### Analysis

```text
Return Rate by Customer Segment
Customer Value by Region
Category Preference by Customer Segment
```

This page acts as the diagnostic layer of the project.

---

# 🧮 Important KPI Definitions

## Total Revenue

```text
Total Revenue =
SUM(Order Item Revenue)
```

---

## Average Order Value

```text
AOV =
Total Revenue / Total Orders
```

It measures average revenue generated per order.

---

## Revenue per Customer

```text
Revenue per Customer =
Total Revenue / Total Customers
```

It measures average customer value for the selected context.

---

## Purchase Frequency

```text
Purchase Frequency =
Total Orders / Total Customers
```

It indicates how frequently customers purchase on average.

---

## Retention Rate

Conceptually:

```text
Retention Rate =
Customers retained from previous month
/
Customers active in previous month
```

---

## Churned Customer

Project definition:

```text
Days Since Last Purchase > 90
```

---

## At-Risk Customer

Project definition:

```text
Days Since Last Purchase > 60
```

before reaching the Churn threshold.

---

## Top 20% Customer Revenue %

Measures the percentage of total customer revenue generated by the highest-revenue 20% of customers.

---

## Return Rate

Conceptually:

```text
Returned Items
/
Sold Items
```

subject to the returned-quantity limitation documented above.

---

# 💡 Major Business Insights

## 1️⃣ Customer revenue is concentrated

The RFM analysis indicates that:

> **The top 20% of customers contribute approximately 45.53% of total customer revenue.**

### Business implication

The business should closely monitor its highest-value customers because losing a relatively small group can have a disproportionately large revenue impact.

---

## 2️⃣ At-Risk customers represent meaningful historical value

The At-Risk segment represents approximately:

> **₹133.58M in historical revenue**

within the full-history RFM snapshot.

### Business implication

Retention priorities should consider customer value, not only inactivity.

---

## 3️⃣ Customer segments behave differently

Champions, Loyal, At-Risk, Regular and New / Promising customers show different combinations of:

```text
Recency
Frequency
Monetary Value
```

### Business implication

A single marketing or retention strategy should not be applied equally to every customer.

---

## 4️⃣ Returning behavior should be monitored separately from acquisition

The dashboard separates New and Returning customers and their revenue contribution.

### Business implication

Management can determine whether growth is being supported by existing customers or primarily depends on acquiring new customers.

---

## 5️⃣ Regional size and regional customer value are different

Total Revenue by Region and Revenue per Customer by Region can produce different rankings.

### Business implication

Management should distinguish:

> **large regions**

from:

> **high-value regions**

when allocating customer-growth resources.

---

## 6️⃣ Product preferences differ across customer segments

Category analysis shows that different customer groups generate different levels of revenue across product categories.

### Business implication

Customer segmentation can support more targeted cross-selling and recommendation strategies.

---

# 🎯 Recommended Business Actions

## Priority 1 — Protect High-Value Customers

Focus retention resources on:

```text
Champions
+
Loyal Customers
```

Potential actions:

- Loyalty benefits
- Personalized communication
- Cross-selling
- Early-access offers
- High-value customer monitoring

The objective is to protect existing customer value before relying on replacement acquisition.

---

## Priority 2 — Prioritize High-Value At-Risk Customers

Do not treat every inactive customer equally.

Create a prioritized customer list using:

```text
At-Risk Status
+
Historical Revenue
+
Purchase Frequency
+
Recency
```

Customers with the highest historical value should receive retention attention first.

---

## Priority 3 — Build an Early-Warning Retention Process

Instead of waiting until a customer becomes fully churned:

```text
60 Days Inactive
      ↓
At Risk
      ↓
Retention Action
      ↓
Monitor Purchase
      ↓
90 Days
      ↓
Churned if no return
```

This creates proactive retention management.

---

## Priority 4 — Increase Purchase Frequency

Identify customers with:

```text
High Monetary Value
+
Moderate Frequency
```

and test:

- personalized recommendations,
- bundles,
- cross-selling,
- replenishment reminders,
- loyalty incentives.

The objective is to increase repeat purchasing and long-term customer value.

---

## Priority 5 — Use Segment-Based Product Strategy

Use category preference by customer segment to identify:

- categories preferred by Champions,
- products attractive to Loyal customers,
- categories historically purchased by At-Risk customers.

This information can support targeted campaigns and product recommendations.

---

## Priority 6 — Monitor Revenue Concentration

Management should regularly monitor:

```text
Top 20% Revenue Contribution
Champion Customers
Loyal Customers
At-Risk Revenue
Retention Rate
Churn Rate
```

because deterioration among high-value customers can create significant revenue exposure.

---

# ⚙️ Analytical Decision Example

A typical analytical journey in this project looks like:

```text
BUSINESS PROBLEM
Customers may be becoming inactive
        ↓
KPI
Retention Rate / Churn Rate
        ↓
VARIANCE
Different customer groups show different behavior
        ↓
DRILL-DOWN
Customer → Segment → Recency → Frequency → Revenue
        ↓
ROOT CAUSE
Historically valuable customers have stopped purchasing recently
        ↓
INSIGHT
Customer inactivity includes meaningful historical revenue
        ↓
RECOMMENDATION
Prioritize valuable At-Risk customers
        ↓
BUSINESS ACTION
Create a revenue-ranked re-engagement list
and track subsequent purchasing behavior
```

---

# ❓ Why Was RFM Built in SQL?

RFM was originally developed as part of the SQL ad-hoc analysis.

The customer-level output already contained:

```text
Customer ID
Recency
Frequency
Monetary Value
R Score
F Score
M Score
Customer Segment
```

Once the logic was validated, the RFM output was used in Power BI.

This avoided maintaining two different segmentation definitions in SQL and DAX.

---

# ❓ Why Is There No Date Slicer on the RFM Page?

The RFM table represents a:

> **Full-History Customer Snapshot**

The customer segment does not dynamically recalculate when the dashboard Date slicer changes.

Adding a Date slicer to the RFM page could therefore incorrectly suggest that the segmentation itself is dynamic.

For this reason:

```text
Executive Overview      → Date Filter
Segmentation & Value    → Full-History Snapshot
Retention & Churn       → Date Filter
Customer Drivers & RCA  → Date Filter
```

---

# ❓ Why Use a Separate Date Dimension?

A dedicated `dim_date` table supports:

- consistent month ordering,
- date slicing,
- retention analysis,
- month-over-month customer behavior,
- and chronological trend visualization.

Trend charts use:

```text
dim_date[month_year]
```

and chronological sorting is controlled through:

```text
dim_date[years_month]
```

---

# ❓ Why Not Call Every Repeat Customer Retained?

Because repeat purchasing does not guarantee consecutive-period retention.

A customer may purchase several times across the full dataset but still disappear for several months.

Therefore:

```text
Repeat
≠
Returning
≠
Retained
```

Each metric answers a different business question.

---

# ❓ Why Use a 90-Day Churn Threshold?

The source data does not contain a predefined churn flag.

A project-level rule was therefore required.

The 90-day inactivity rule provides a practical demonstration of how customer recency can be converted into a churn indicator.

However, in a real organization the final threshold should be determined using:

- normal repurchase cycle,
- business model,
- product category,
- historical retention behavior,
- and stakeholder input.

---

# 🗄️ Data Model

The analytical model contains:

```text
DIMENSIONS
├── dim_date
├── dim_customers
├── dim_products
├── dim_category
└── customer_rfm

FACT / TRANSACTION TABLES
├── fact_orders
├── fact_order_items
├── fact_returns
└── fact_reviews
```

Main transaction flow:

```text
dim_customers
      │
      ▼
fact_orders
      │
      ▼
fact_order_items
      │
      ├──────── dim_products
      │              │
      │              ▼
      │         dim_category
      │
      └──────── fact_returns
```

Additional relationships support customer and product review analysis.

---

# 🔍 SQL Business Investigations

Eight focused SQL investigations were completed:

```text
01. RFM Customer Segmentation
02. Customer Segment Performance
03. Revenue Concentration / Pareto
04. New vs Returning Customers
05. Customer Retention
06. At-Risk & Churned Customers
07. Purchase Frequency Analysis
08. Customer Driver / Root Cause Analysis
```

Each investigation was designed around a business question rather than simply demonstrating SQL syntax.

---

# 🖼️ Dashboard Preview

<details>

<summary><b>🏠 Home Page</b></summary>

<br>

![Home Page](01_PowerBI_Dashboard/Dashboard_Screenshots/00_Home_Page.png)

</details>

<details>

<summary><b>📊 Executive Overview</b></summary>

<br>

![Executive Overview](01_PowerBI_Dashboard/Dashboard_Screenshots/01_Executive_Overview.png)

</details>

<details>

<summary><b>👥 Customer Segmentation & Value</b></summary>

<br>

![Customer Segmentation](01_PowerBI_Dashboard/Dashboard_Screenshots/02_Customer_Segmentation.png)

</details>

<details>

<summary><b>🔄 Retention & Churn</b></summary>

<br>

![Retention & Churn](01_PowerBI_Dashboard/Dashboard_Screenshots/03_Retention_Churn.png)

</details>

<details>

<summary><b>📈 Customer Drivers & RCA</b></summary>

<br>

![Customer Drivers](01_PowerBI_Dashboard/Dashboard_Screenshots/04_Customer_Drivers.png)

</details>

---

# 🧰 Technology Stack

| Area | Technology |
|---|---|
| BI & Visualization | Power BI |
| Database | MySQL |
| Business Analysis | SQL |
| Data Transformation | Power Query |
| Analytics Logic | DAX |
| Customer Segmentation | RFM |
| Data Modeling | Dimensional Modeling |
| Version Control | GitHub |

---

# 📂 Repository Structure

```text
customer-behavior-revenue-analytics/
│
├── README.md
│
├── LICENSE
│
├── Dataset/
│
├── 01_PowerBI_Dashboard/
│   ├── Customer-Behavior-Revenue-Analytics.pbix
│   └── Dashboard_Screenshots/
│       ├── 00_Home_Page.png
│       ├── 01_Executive_Overview.png
│       ├── 02_Customer_Segmentation.png
│       ├── 03_Retention_Churn.png
│       └── 04_Customer_Drivers.png
│
├── 02_SQL/
│   ├── 01_rfm_customer_segmentation.sql
│   ├── 02_segment_performance.sql
│   ├── 03_revenue_concentration_pareto.sql
│   ├── 04_new_vs_returning_customers.sql
│   ├── 05_customer_retention.sql
│   ├── 06_at_risk_churned_customers.sql
│   ├── 07_purchase_frequency_analysis.sql
│   └── 08_customer_driver_analysis.sql
│
├── 03_SQL_Outputs/
│   ├── 01_rfm_segments.csv
│   ├── 02_segment_performance.csv
│   ├── 03_pareto_analysis.csv
│   ├── 04_new_vs_returning.csv
│   ├── 05_retention_analysis.csv
│   ├── 06_at_risk_customers.csv
│   ├── 07_purchase_frequency.csv
│   └── 08_customer_drivers.csv
│
├── 04_Documentation/
│   ├── Data_Model.png
│   ├── Business_Problem.md
│   └── Key_Insights.md
│
├── 05_Report/
│   └── Customer-Behavior-Revenue-Analytics.pdf
│
└── 06_Assets/
    ├── Logo/
    └── Icons/
```

---

# ⚡ 60–90 Second Project Summary

> I built a Customer Behavior and Revenue Analytics solution using MySQL, SQL, Power BI, DAX and Power Query. The main business problem was to understand which customers drive revenue, whether customers are returning, which valuable customers are becoming inactive and what factors influence customer value. I first performed eight SQL business analyses, including RFM segmentation, revenue concentration, new versus returning customers, retention, churn and purchase frequency. I then created a Power BI dashboard with Executive, Customer Segmentation, Retention & Churn and Customer Driver pages. The full-history RFM snapshot showed that the top 20% of customers contribute approximately 45.5% of customer revenue and the At-Risk segment represents about ₹133.6M in historical revenue. This led to the recommendation that retention campaigns should prioritize historically valuable At-Risk customers rather than treating all inactive customers equally. The final solution follows a Business Problem → KPI → Variance → Drill-down → Root Cause → Insight → Recommendation → Business Action approach.

---

# 🧠 Project Memory Map

Remember the project using five words:

```text
VALUE
  ↓
CONCENTRATION
  ↓
RETENTION RISK
  ↓
ROOT CAUSE
  ↓
ACTION
```

### VALUE

Identify which customers generate the most value.

### CONCENTRATION

Understand how much revenue depends on high-value customers.

### RETENTION RISK

Identify valuable customers becoming inactive.

### ROOT CAUSE

Investigate frequency, recency, category and regional behavior.

### ACTION

Prioritize customer retention and growth opportunities.

---

# 🔑 Three Numbers to Remember

```text
45.53%
Top 20% Customer Revenue Contribution

₹133.58M
At-Risk Historical Revenue

5
Major RFM Customer Segments
```

These three figures summarize the customer-value story of the project.

---

# ⚡ Three Business Insights to Remember

```text
1. Revenue is concentrated among high-value customers.

2. A meaningful amount of historical revenue belongs
   to customers currently classified as At Risk.

3. Customer value differs across segment, frequency,
   category and region.
```

These observations summarize the main analytical value of the project.

---

# 🛡️ Portfolio Accuracy / Limitations

This project should be interpreted as a portfolio analytics and decision-support solution.

Important limitations:

- The project identifies analytical findings and recommendations.
- Recommendations have not been claimed as deployed business outcomes.
- No measured revenue increase or churn reduction is claimed.
- RFM segmentation is a full-history snapshot rather than a dynamically recalculated Date-slicer segmentation.
- The 60-day At-Risk and 90-day Churn thresholds are project assumptions.
- Actual churn thresholds should be validated against the real business purchase cycle.
- Return quantity is not directly available, so return analysis uses the available returned-order-item information.
- Dashboard values on date-enabled pages change based on slicer selections.

These limitations are intentionally documented to keep the project transparent and defensible.

---

# 🚀 Skills Demonstrated

This project demonstrates practical ability in:

- Business problem understanding
- KPI design
- Customer analytics
- Customer segmentation
- RFM analysis
- Revenue concentration / Pareto analysis
- Retention analysis
- Churn analysis
- Purchase-frequency analysis
- New vs Returning customer analysis
- Product-category analysis
- Regional customer-value analysis
- Root Cause Analysis
- SQL
- MySQL
- CTEs
- Window Functions
- Power Query
- DAX
- Data Modeling
- Power BI
- Interactive dashboard design
- Business storytelling
- Insight generation
- Recommendation development
- Decision-oriented analytics

---

# 🔗 Project Links

### 🌐 Live Dashboard

[Open Customer Behavior & Revenue Analytics in Power BI](YOUR_POWER_BI_LINK_HERE)

### 📄 PDF Report

[View Dashboard PDF](05_Report/Customer-Behavior-Revenue-Analytics.pdf)

---

<div align="center">

## ⭐ If you found this project useful, consider starring the repository.

### Customer Behavior & Revenue Analytics

**Monitor → Segment → Detect Risk → Diagnose → Act**

</div>
