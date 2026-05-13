# Customer-Segmentation-Marketing-Analytics
# 🛒 Customer Segmentation & Marketing Analytics SQL Project

## 📌 Project Overview

This project performs an end-to-end SQL analytics solution on customer marketing campaign data to generate actionable business insights. The analysis focuses on understanding customer behavior, identifying high-value customer segments, detecting churn risk, evaluating campaign effectiveness, and analyzing purchase channel preferences using SQL Server.

The analysis covers:

* **Data Preparation:** Handling NULL values, filtering incomplete records, and creating derived metrics (`TOTAL_SPENT`, `TOTAL_PURCHASE`).
* **RFM Analysis & Segmentation:** Utilizing Recency, Frequency, and Monetary scoring (`NTILE(3)`) to categorize customers into business groups (VIP, LOYAL, BIG SPENDER, AT RISK, LOW).
* **Performance Metrics:** Identifying top customers within segments, channel preferences, and campaign responsiveness.

## 📁 Project Structure

* `SQL Scripts/` : Contains the SQL codes for the analytical views and reporting queries (e.g., `01_Create_Customer_View.sql`).
* `Dataset/` : Raw marketing campaign dataset (Customer details, spending data, channel data).
* `ScreenShots/` : Query outputs and analytical result screenshots.

## 📊 Key Insights & Findings

### 1. Executive Summary

The business generates the highest overall revenue from the "Big Spender" segment, while "VIP" customers show the highest campaign response rates (33%).

* **Total Segments Analyzed:** 5 (VIP, LOYAL, BIG SPENDER, AT RISK, LOW)
* **Highest Revenue Contributor:** BIG SPENDER (39% of Total Revenue)
* **Highest Response Rate:** VIP (33%)

### 2. Top Customers Analysis

Premium customers were identified within each segment using window functions (`RANK()`) to support personalized engagement strategies.

* **Top VIP Customer Spend:** 2,525
* **Top Big Spender Spend:** 2,524

### 3. Churn Risk Analysis

Several high-value customers showed long inactivity periods (Recency > 70 days).

* **At-Risk High Spenders:** Customers with historically high spending who have not purchased recently present a severe churn risk and an immediate opportunity for targeted retention campaigns.

### 4. Purchase Channel Intelligence

Store purchases emerged as the dominant channel overall, but segment preferences vary significantly.

* **LOYAL Customers:** Showed stronger web engagement.
* **BIG SPENDER Customers:** Demonstrated meaningful catalog utilization alongside store purchases.

### 5. Campaign Effectiveness Analysis

Standard campaign strategies yield vastly different results across segments.

* **High Conversion:** VIP customers are highly receptive to marketing campaigns.
* **Low Conversion:** AT RISK customers showed minimal response (2%), indicating that standard campaigns are ineffective for re-engagement.

## 🛠️ Technical Skills Demonstrated

* **SQL Functions:** Aggregate (`SUM`, `AVG`, `COUNT`, `MIN`, `MAX`), Window (`NTILE`, `RANK`, `OVER`), Control Flow (`CASE`).
* **Data Architecture:** Schema creation (`VIEWS`), Common Table Expressions (`CTEs`), Subqueries.
* **Analytics Domain:** Customer Segmentation, RFM Analysis, Churn Prediction, Business Intelligence.

## 🚀 How to Run

1. **Setup Database:** Run `SQL Scripts/1_create_customer_view.sql` in SSMS to prepare the base analytical dataset and RFM scoring.
2. **Run Analysis:** Execute scripts `2_Executive_Summary.sql` through `6_Campaign_Analysis.sql` to view the specific business insights.

---

**Author:** Chinmaye Datta Kasarla | **Tools:** SQL Server Management Studio (SSMS), GitHub
