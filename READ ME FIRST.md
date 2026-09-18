# Supply Chain Analysis

## About Me

I am passionate about data analysis and enjoy turning raw data into meaningful insights. I created this project to strengthen my practical experience with SQL, BigQuery, Tableau, and data visualization while continuing to develop the skills I hope to use in a future career in data analytics.

## Project Overview

This project analyzes a supply chain dataset containing over 180,000 customer orders to identify trends in transit times, shipping performance, order volume, product categories, and customer behavior. The goal of the analysis was to use data to answer key business questions and identify insights that could support inventory planning, shipping strategy, and customer segmentation.

## Business Questions

The analysis focused on four key questions:

1. **Which customer cities see the best and worst transit times?**
   - Does product category influence transit-time performance?

2. **Which shipping mode has the lowest late-delivery risk, and which has the highest?**

3. **Which customer cities place the most orders?**
   - Does product category influence order volume?

4. **Do Corporate customers order differently than Consumers?**

## Tools & Technologies

- **Google BigQuery / SQL** — Data cleaning, transformation, and analysis
- **Tableau** — Data visualization and dashboard development
- **Microsoft Excel** — Data exploration and preparation

## Key Findings

- Geographic differences in transit times were observed across customer cities, with several coastal or port-adjacent cities experiencing shorter average transit times than a number of inland cities.
- Standard Class performed closest to its expected transit-time KPI, while First Class showed the largest gap between expected and actual average transit time.
- Caguas, Puerto Rico was a significant order-volume outlier, generating **66,770 orders** compared with an average of **117 orders per city**.
- Consumer customers generated the most orders with **93,504**, followed by Corporate with **54,789** and Home Office with **32,226**.
- Product preferences were highly consistent across customer segments, with **Cleats, Men's Footwear, and Women's Apparel** ranking among the top three categories across all three segments.
- Shipping preferences were also broadly similar across Consumer, Corporate, and Home Office customers, with Standard Class accounting for approximately **59%** of each segment's shipping volume.

## Tableau Visualizations

The Tableau dashboards were developed to explore the project's four primary business questions, including geographic transit-time trends, shipping performance, customer order volume, product categories, and customer-segment behavior.

Screenshots of the visualizations are available in the `Tableau/Screenshots` folder, while the Tableau workbook is available in the `Tableau` folder.

## SQL Analysis

SQL was used in Google BigQuery to clean, transform, aggregate, and analyze the supply chain data. The queries used to answer the project's business questions are available in the `SQL` folder.

## Data

The original dataset is not included in this repository due to file-size limitations. The data was imported into Google BigQuery for analysis, and the SQL used to prepare the data is provided in this repository.

## Report

The full methodology, analysis, and business insights are available in the `Report` folder.

## Repository Structure

```text
supply-chain-analysis/
├── README.md
├── Data/
│   └── README.md
├── SQL/
│   ├── README.md
│   └── supply_chain_analysis.sql
├── Tableau/
│   ├── README.md
│   ├── Supply_Chain_Analysis.twbx
│   └── Screenshots/
└── Report/
    └── Supply_Chain_Analysis_Report.docx


