 # Which Cities place the most orders?
SELECT `Customer City`, COUNT(DISTINCT `Order Id`) AS Number_of_Orders FROM `supply-chain-analysis-496516.supplychainanalysis.customer_orders_cleaned` GROUP BY `Customer City` ORDER BY Number_of_Orders DESC;
#does time of year matter? (is seasonality present)
SELECT EXTRACT(YEAR FROM Order_Date) AS Year, EXTRACT(MONTH FROM Order_Date) AS Month, COUNT(DISTINCT `Order Id`) AS Number_of_Orders FROM `supply-chain-analysis-496516.supplychainanalysis.customer_orders_cleaned` GROUP BY Year, Month ORDER BY Year, Month;
# Does customer segment matter?
SELECT `Customer City`, `Customer Segment`, COUNT(DISTINCT `Order Id`) AS Number_of_Orders FROM `supply-chain-analysis-496516.supplychainanalysis.customer_orders_cleaned` GROUP BY `Customer City`,`Customer Segment` ORDER BY Number_of_Orders DESC;

SELECT `Customer City`, `Customer Segment`, COUNT(DISTINCT `Order Id`) AS Number_of_Orders FROM `supply-chain-analysis-496516.supplychainanalysis.customer_orders_cleaned` GROUP BY `Customer City`,`Customer Segment` HAVING Count(DISTINCT `Order ID`) > 50 ORDER BY `Number_of_Orders` DESC LIMIT 100;