# Retail Sales Analysis Using PostgreSQL

## Project Overview

This project focuses on analyzing retail sales data using **PostgreSQL**
to extract meaningful business insights and identify sales trends,
customer purchasing behavior, and product category performance.

The analysis uses SQL queries to explore sales transactions, calculate
revenue, identify top customers, analyze monthly sales performance, and
understand customer demographics.

The goal is to transform raw retail sales data into actionable insights
that can help businesses make better data-driven decisions.

## Project Objectives

-   Analyze overall retail sales performance.
-   Identify the best-performing product categories.
-   Understand customer purchasing behavior.
-   Analyze monthly and yearly sales trends.
-   Identify the top 5 customers based on total sales.
-   Explore customer demographics by gender and age.
-   Analyze transaction patterns across different time shifts.
-   Generate meaningful business insights using SQL.

## Tools & Technologies

  Tool         Purpose
  ------------ -------------------------------------------
  PostgreSQL   Database management and SQL analysis
  SQL          Data querying and analysis
  pgAdmin      Database management and query execution
  GitHub       Project documentation and version control

## Dataset Description

The project uses a retail sales dataset containing transaction-level
information.

**Dataset columns:**

  Column Name       Description
  ----------------- --------------------------------
  transactions_id   Unique transaction identifier
  sale_date         Date of the transaction
  sale_time         Time of the transaction
  customer_id       Unique customer identifier
  gender            Gender of the customer
  age               Age of the customer
  category          Product category
  quantity          Number of products purchased
  price_per_unit    Price of one product unit
  cogs              Cost of goods sold
  total_sale        Total transaction sales amount

*Note: Confirm the column names against your actual dataset and adjust
this table if needed.*

## Data Cleaning & Preparation

Before performing the analysis, the dataset was prepared to ensure data
quality and consistency.

The following steps were performed:

1.  Checked the dataset structure and column names.
2.  Identified and handled missing or NULL values.
3.  Checked for duplicate transaction records.
4.  Verified date and time formats.
5.  Ensured numerical columns contained valid values.
6.  Checked transaction quantities and sales amounts.
7.  Renamed columns where necessary for consistency.

## SQL Concepts Used

-   **SELECT:** Retrieve data from tables.
-   **WHERE:** Filter records based on conditions.
-   **AND / OR:** Apply multiple filtering conditions.
-   **BETWEEN:** Filter records within a date or numerical range.
-   **GROUP BY:** Group records for aggregate analysis.
-   **ORDER BY:** Sort query results.
-   **LIMIT:** Restrict the number of returned records.
-   **SUM():** Calculate total sales revenue.
-   **COUNT():** Count transactions.
-   **COUNT(DISTINCT):** Count unique customers.
-   **AVG():** Calculate average customer age.
-   **CASE WHEN:** Categorize transactions into different shifts.
-   **Date & Time Functions:** Extract and analyze dates, months, years,
    and transaction times.

##  Business Questions & Analysis

The following 10 business questions were solved using PostgreSQL:

### 1. Sales Transactions on a Specific Date

Retrieve all sales transactions made on 5th November 2022.

**Objective:** Analyze sales activities on a particular date.

### 2. Clothing Sales with High Quantity

Retrieve clothing transactions with a quantity greater than 2 during
November 2022.

**Objective:** Identify bulk purchases in the Clothing category.

### 3. Category-Wise Sales Revenue

Calculate total sales revenue and total transactions for each product
category.

**Objective:** Understand category-wise sales performance.

### 4. Average Customer Age in Beauty Category

Find the average age of customers purchasing products from the Beauty
category.

**Objective:** Understand the customer demographics of the Beauty
category.

### 5. High-Value Transactions

Retrieve all transactions where total sales exceed 1,000.

**Objective:** Identify high-value purchases.

### 6. Gender-Wise Category Transactions

Calculate the total number of transactions by gender and product
category.

**Objective:** Understand purchasing patterns across genders and product
categories.

### 7. Monthly Sales Analysis

Calculate monthly sales for each year and identify the best-selling
month.

**Objective:** Analyze sales trends and identify peak sales periods.

### 8. Top 5 Customers

Identify the top 5 customers based on total sales.

**Objective:** Find the highest-value customers.

### 9. Unique Customers by Product Category

Calculate the number of unique customers for each product category.

**Objective:** Understand customer reach across different product
categories.

### 10. Sales Analysis by Time Shifts

Categorize transactions into Morning, Afternoon, and Evening shifts and
count orders in each shift.

**Objective:** Identify the most active shopping periods.

## 🔍 Key Findings

The SQL analysis helps identify the following business insights:

-   Category-wise revenue analysis highlights the contribution of
    different product categories.
-   High-value transaction analysis identifies purchases exceeding
    1,000.
-   Customer segmentation reveals purchasing patterns across gender and
    age groups.
-   Monthly sales analysis helps identify peak-performing months.
-   Top customer analysis highlights high-value customers.
-   Unique customer analysis measures customer reach across product
    categories.
-   Time-shift analysis helps identify customer shopping patterns
    throughout the day.

*Note: Add specific numerical findings from your actual SQL query
outputs. No numerical results have been assumed in this README.*

## 💡 Business Value

This project demonstrates how SQL can support retail business
decision-making.

The insights generated can help businesses:

-   Identify high-performing product categories.
-   Improve sales and marketing strategies.
-   Understand customer preferences and demographics.
-   Recognize valuable customers.
-   Plan seasonal promotions based on monthly sales trends.
-   Optimize staffing based on shopping time patterns.
-   Improve customer retention and business performance.

## 📁 Project Structure

``` text
Retail-Sales-Analysis/
│
├── dataset/
│   └── retail_sales.csv
│
├── sql/
│   └── retail_sales_analysis.sql
│
└── README.md
```


## Conclusion

The Retail Sales Analysis project demonstrates the practical application
of PostgreSQL for analyzing retail transaction data.

By solving 10 real-world business questions, the project explores sales
performance, customer behavior, product categories, monthly trends, and
purchasing patterns.

This project strengthened my understanding of SQL querying, aggregate
functions, data cleaning, and business data analysis. It also
demonstrates how data can be transformed into meaningful insights to
support data-driven business decisions.

## Author

**Vinay Kumar**

Aspiring Data Analyst

**Skills:** SQL \| PostgreSQL \| Data Analysis \| Data Cleaning \|
Business Analysis

**GitHub:** 
https://github.com/vinay-09-2004
