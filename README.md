# Telco Customer Churn Analysis

## Project Overview

This project analyzes customer churn for a telecommunications company to understand why customers leave and to identify high-risk customer segments.

The analysis covers **7,043 customers** and examines contract type, tenure, internet service, payment method, monthly charges, and support services.

## Business Objective

> **Why are customers leaving the company, and which customer segments have higher churn rates?**

## Tools Used

- Python (Pandas)
- SQL
- Power BI
- DAX

## Dashboard

The Power BI dashboard contains three pages:

1. **Executive Overview:** customer base, revenue, and overall churn performance.
2. **Customer & Churn Analysis:** churn by contract type, internet service, tenure, payment method, and tech support.
3. **Customer Risk & Retention:** high-risk customer segments and a customer-level view for retention analysis.

## Key Insights

- Overall churn rate is **26.54%**.
- Month-to-month customers have the highest churn rate among contract types at **42.71%**.
- Customers with 0–12 months of tenure churn at **47.44%**.
- Electronic check users have the highest churn rate among payment methods at **45.29%**.
- Customers without Tech Support churn at **41.64%**, compared with **15.17%** for customers with Tech Support.
- A rule-based high-risk segment (month-to-month contract + Fiber optic internet + monthly charges ≥ 80 + no Tech Support) includes **1,150 customers**, about 16% of the customer base. Its churn rate is **56.09%**, more than double the overall rate, and it accounts for over a third of all churned customers.

## Business Recommendations

- Encourage month-to-month customers to move to longer-term contracts.
- Focus retention efforts on customers during their first year.
- Investigate the customer experience of high-churn payment segments.
- Offer targeted support or retention offers to the high-risk segment first, since it concentrates over a third of churn in about 16% of customers.
- Further investigate the relationship between Fiber optic service and churn.

## Note

The high-risk segment is a rule-based segmentation, not a machine-learning prediction model.

