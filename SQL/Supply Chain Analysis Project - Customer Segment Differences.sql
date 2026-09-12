# Do corporate customers order differently than consumers

# sample of the data regarding product's customers order
SELECT `Customer Segment`, `Category Name`, `Product Name` FROM `supply-chain-analysis-496516.supplychainanalysis.customer_orders_cleaned` LIMIT 25;

#getting each different type of customer, product category, and product
SELECT
  COUNT(DISTINCT `Customer Segment`) AS Number_of_Customer_Segments,
  COUNT(DISTINCT `Category Name`) AS Number_of_Categories,
  COUNT(DISTINCT `Product Name`) AS Number_of_Products
FROM `supply-chain-analysis-496516.supplychainanalysis.customer_orders_cleaned`;

SELECT `Customer Segment`, COUNT(`Customer Segment`) AS  `Customer_Base_Population` FROM `supply-chain-analysis-496516.supplychainanalysis.customer_orders_cleaned` GROUP BY `Customer Segment` ORDER BY `Customer Segment` DESC;

SELECT `Category Name`, COUNT(`Category Name`) AS  `Category Count` FROM `supply-chain-analysis-496516.supplychainanalysis.customer_orders_cleaned` GROUP BY `Category Name` ORDER BY `Category Count` DESC ;

SELECT `Product Name`, COUNT(`Product Name`) AS  `Product Count` FROM `supply-chain-analysis-496516.supplychainanalysis.customer_orders_cleaned` GROUP BY `Product Name` ORDER BY `Product Count` DESC ;

#what does each customer segment order the most of?
SELECT `Customer Segment`, `Category Name`, Count(*) AS `Number_of_Customers_for_Each_Product` FROM `supply-chain-analysis-496516.supplychainanalysis.customer_orders_cleaned` GROUP BY `Customer Segment`, `Category Name` ORDER BY `Customer Segment`, `Number_of_Customers_for_Each_Product` DESC;

