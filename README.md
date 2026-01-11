# Credit Default Risk Analytics Dashboard

---

## Project Overview

This project focuses on analyzing **credit default risk** in loan applications to support
**data-driven decision-making** in financial institutions.  
The analysis explores how **demographics, income levels, employment stability, profession, and geography**
influence loan default behavior.

The dataset consists of **280,000 loan application records**, containing customer, employment, and financial attributes.
The primary objective is to **identify high-risk customer segments**, measure default rates across multiple dimensions,
and provide an **interactive reporting system** for credit risk assessment.

By developing a comprehensive Power BI dashboard backed by SQL-driven analysis, this project enables
stakeholders to:
- Understand overall default exposure
- Detect high-risk segments early
- Support credit approval and risk mitigation strategies

  <img width="891" height="480" alt="Screenshot 2026-01-12 010338" src="https://github.com/user-attachments/assets/2eb8dd57-6d4e-4489-9774-99fd480a3701" />
  <img width="921" height="496" alt="Screenshot 2026-01-12 010614" src="https://github.com/user-attachments/assets/1911f7fe-cf7b-4b8b-aa5d-f13c55a8b2c8" />
  <img width="890" height="498" alt="Screenshot 2026-01-12 010408" src="https://github.com/user-attachments/assets/4169dadb-eb05-4ceb-a4c0-e35839329e5f" />

---

## Dataset Description

- **Total Records:** 280,000 loan applications  
- **Source:** Public loan risk dataset (Kaggle)  
- **Target Variable:** `risk_flag`  
  - `1` → High Risk / Default  
  - `0` → Low Risk / Non-default  

### Key Columns
- **Demographic Information:**  
  `age`, `state`, `city`, `profession`, `marital_status`
- **Financial Information:**  
  `income`, `income_band`
- **Employment Information:**  
  `experience`, `current_job_yrs`, `employment_stability`
- **Risk Indicator:**  
  `risk_flag`

---

## Project Objectives

- Analyze overall credit default trends
- Segment customers based on income, age, profession, and employment stability
- Identify high-risk loan segments
- Build an interactive dashboard for exploratory risk analysis
- Support business stakeholders with actionable insights

---

## Key Performance Indicators (KPIs)

### Credit Risk KPIs
- **Total Loan Applications**  
- **Default Rate (%)**
- **High Risk Applications**
- **Low Risk Applications**

These KPIs provide a high-level summary of the loan portfolio’s risk profile.

---

## Dashboard Overview

The dashboard is designed with **multiple pages** to provide both high-level summaries and detailed insights.

---

###  Summary Page

This page presents a quick snapshot of the loan portfolio:

- Total Applications
- Default Rate (%)
- High Risk Applications
- Low Risk Applications
- Default Rate by Employment Stability
- Default Rate by Income Band
- Decision Table combining Income Band and Employment Stability

This view is intended for **executive-level stakeholders**.

---

###  Overview Page

This page enables deeper analysis across multiple dimensions:

- Default Rate by Employment Stability
- Default Rate by Income Band
- Default Rate by Profession (Top Risk Professions)
- Default Rate by State
- Distribution of applications by employment stability

Interactive slicers allow filtering by:
- State
- Age Group
- Profession

This view helps identify **patterns and concentration of risk**.

---

### Details Page

The details page provides a **drill-down view** at the individual record level.

Displayed fields include:
- Age
- Income Band
- Profession
- State
- Employment Stability
- Risk Flag

This enables analysts to investigate **specific high-risk segments** and validate patterns observed in summary views.

---

## Key Insights & Analysis

- **Employment Stability is the strongest indicator of default risk**  
  Customers with unstable employment show the highest default rate (~14%).
  
- **Younger applicants (21–30 age group)** exhibit higher default rates compared to older groups.

- **Income risk is non-linear**  
  Both low-income and very-high-income segments display elevated default rates, indicating that income alone is not sufficient for risk assessment.

- **Profession-based risk variation exists**  
  Certain professions consistently show higher default percentages, highlighting opportunities for targeted credit policies.

- **Geographical differences**  
  Default rates vary across states, suggesting region-specific credit strategies may be beneficial.

---

## SQL & Power BI Implementation

### SQL
- Database creation and table setup
- Data aggregation and segmentation
- Usage of:
  - `SELECT`
  - `GROUP BY`
  - `ORDER BY`
  - `COUNT`, `AVG`, `SUM`
  - Common Table Expressions (CTEs)
  - Ranking and filtering logic

SQL was primarily used to **prepare analytical datasets and risk metrics**.

---

### Power BI
- Data cleaning and transformation using **Power Query**
- Data modeling and relationships
- Creation of calculated measures using **DAX**, including:
  - `CALCULATE`
  - `FILTER`
  - `SUM` / `SUMX`
  - Date and time intelligence functions
- KPI cards, bar charts, tables, slicers
- Drill-through pages and navigation controls

Power BI was used for **modeling, visualization, and interactive analysis**.

---

## Project Structure
```
Credit-Decisioning-Risk-Analytics/
│
├── data/
│ ├── train.csv
│ ├── test.csv
│ ├── loan_data_combined.csv
│ └── loan_data_analysis_ready.csv
│
├── notebooks/
│ ├── 01_data_understanding.ipynb
│ └── 02_feature_preparation.ipynb
│
├── sql/
│ ├── 01_basic_metrics.sql
│ ├── 02_segment_analysis.sql
│ └── 03_risk_ranking.sql
│
├── dashboard/
│ ├── credit_default_risk_dashboard.pbix
│ └── screenshots/
│
└── README.md

```
##  Data Dictionary

| Column Name | Description | Data Type | Example |
|-------------|-------------|-----------|---------|
| `risk_flag` | Default indicator (1=High Risk, 0=Low Risk) | Integer | 1 |
| `income_band` | Categorized income level | String | "Medium" |
| `employment_stability` | Job stability rating | String | "High" |
| `profession` | Customer occupation | String | "Engineer" |
| `state` | Applicant's state | String | "California" |
| `age_group` | Age category | String | "31-40" |
| `current_job_yrs` | Years in current job | Integer | 5 |
| `experience` | Total work experience | Integer | 12 |
---

## Conclusion

This project demonstrates an **end-to-end data analytics workflow**, from raw data preparation and SQL analysis
to interactive Power BI dashboards.

By focusing on **interpretability, segmentation, and business relevance**, the solution helps financial institutions
better understand default risk and make informed credit decisions.

---

## Screenshots of the Dashboard

- Summary Page
  <img width="891" height="480" alt="Screenshot 2026-01-12 010338" src="https://github.com/user-attachments/assets/2eb8dd57-6d4e-4489-9774-99fd480a3701" />
- Overview Page
  <img width="921" height="496" alt="Screenshot 2026-01-12 010614" src="https://github.com/user-attachments/assets/1911f7fe-cf7b-4b8b-aa5d-f13c55a8b2c8" />
- Details Page
  <img width="890" height="498" alt="Screenshot 2026-01-12 010408" src="https://github.com/user-attachments/assets/4169dadb-eb05-4ceb-a4c0-e35839329e5f" />


(Screenshots available in the `dashboard/screenshots` folder)

---
