#### Initial Data Investgation (total rows, column names, missing values, etc.) ####
SELECT * FROM supply-chain-analysis-496516.supplychainanalysis.Customer_Information LIMIT 10;

SELECT COUNT(*) AS number_of_columns
FROM `supply-chain-analysis-496516.supplychainanalysis.INFORMATION_SCHEMA.COLUMNS`
WHERE table_name = 'Customer_Information';
# 53 columns!


SELECT
  ordinal_position,
  column_name,
  data_type
FROM `supply-chain-analysis-496516.supplychainanalysis.INFORMATION_SCHEMA.COLUMNS`
WHERE table_name = 'Customer_Information'
ORDER BY ordinal_position;

#Creating a Cleaned View
CREATE OR REPLACE VIEW `supply-chain-analysis-496516.supplychainanalysis.customer_orders_cleaned` AS
SELECT
  `Customer Id`,
  `Customer Segment`,
  `Customer City`,
  `Order Id`,
  `order date _DateOrders_` AS Order_Date,
  `shipping date _DateOrders_` AS Ship_Date,
  `Shipping Mode`,
  `Days for shipping _real_` AS Actual_Transit_Days,
  `Days for shipment _scheduled_` AS Expected_Ship_Days,
  `Late_delivery_risk`,
  `Delivery Status`,
  `Category Name`,
  `Product Name`,
  `Sales`,
  `Benefit per order`,
  `Order Profit Per Order`
FROM `supply-chain-analysis-496516.supplychainanalysis.Customer_Information`;