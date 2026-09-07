# Telco Customer Churn Analysis

## Project Overview

This project analyzes customer churn for a telecommunications company to understand why customers leave and identify high-risk customer segments.

The analysis covers **7,043 customers** and focuses on customer behavior, contract type, tenure, internet service, payment method, monthly charges, and support services.

## Business Objective

The main objective is to answer:

> **Why are customers leaving the company, and which customer segments have higher churn rates?**

## Tools Used

* Python
* Pandas
* Matplotlib
* Seaborn
* SQL
* Power BI
* DAX

##  Dashboard

The Power BI dashboard contains three pages:

### 1. Executive Overview

Provides an overview of customer base, revenue, and overall churn performance.

### 2. Customer & Churn Analysis

Analyzes churn across:

* Contract type
* Internet service
* Tenure
* Payment method
* Tech support

### 3. Customer Risk & Retention

Identifies high-risk customer segments and provides a customer-level view for retention analysis.

##  Key Insights

* Overall churn rate is **26.54%**.
* Month-to-month customers have the highest churn rate at **42.71%**.
* Customers with 0–12 months tenure have a **47.44%** churn rate.
* Electronic check users have the highest churn rate at **45.29%**.
* Customers without Tech Support show a **41.64%** churn rate compared with **15.17%** for customers with Tech Support.
* A rule-based high-risk segment was identified using contract type, internet service, monthly charges, and tech support.

## Business Recommendations

* Encourage month-to-month customers to move to longer-term contracts.
* Focus retention efforts on customers during their first year.
* Investigate the customer experience of high-churn payment segments.
* Consider targeted support or retention offers for high-risk customers.
* Further investigate the relationship between Fiber optic service and churn.

## Note

The high-risk segment is a rule-based segmentation, not a machine-learning prediction model.
