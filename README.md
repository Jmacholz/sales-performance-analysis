# Sales Performance Analysis (SQL + Excel)

## Overview
This project analyzes sales data to identify top customers, regional performance, product performance, and high-value customer segments using SQL and Excel.

## Business Scenario
A business wants to better understand its sales performance in order to identify:
- top-performing customers
- strongest regions
- best-performing products
- high-value customer segments
- customer ordering behavior over time

## Tools Used
- SQL
- Excel (Pivot Tables)

## Dataset
The dataset contains sales order records with the following fields:
- customer
- region
- product
- revenue
- orderdate

## Business Questions Answered
1. What is total revenue by customer?
2. What is total revenue by region?
3. Which customers generated more than 300 in total revenue?
4. Who is the top customer overall?
5. What is total revenue by product?
6. What is total revenue by customer for orders after 2026-01-10?
7. Which customers placed more than 1 order?
8. What is the average revenue per customer?
9. Who is the top customer in each region?
10. Which high-value customers generated more than 200 in revenue after 2026-01-10?

## Key Insights
- Identified top-performing customers based on total revenue  
- Determined which regions generated the highest revenue  
- Measured product-level sales performance  
- Isolated high-value customers for potential targeting  
- Analyzed customer purchase frequency through order counts  
- Used a window function to rank customers by revenue within each region  
- Combined date-based filtering and aggregation to evaluate recent high-value customer activity  

## Files
- `queries.sql` — SQL queries used for analysis
