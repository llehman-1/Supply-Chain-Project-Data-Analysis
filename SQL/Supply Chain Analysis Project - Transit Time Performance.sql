# Which Customer Cities See the best and worst transit times?

# Highest Volume Cities 
SELECT `Customer City`, count(`Customer City`) AS `total_shipments_delivered` FROM `supply-chain-analysis-496516.supplychainanalysis.customer_orders_cleaned` GROUP BY `Customer City`;

# Cities with the Fastest Transit Time
SELECT
  `Customer City`,
  AVG(Actual_Transit_Days) AS Avg_Transit_Time,
  AVG(Expected_Ship_Days) AS Expected_Transit_Time
FROM `supply-chain-analysis-496516.supplychainanalysis.customer_orders_cleaned`
GROUP BY `Customer City`
ORDER BY Avg_Transit_Time ASC LIMIT 25;


# Cities with the worse transit time
SELECT
  `Customer City`,
  AVG(Actual_Transit_Days) AS Avg_Transit_Time,
  AVG(Expected_Ship_Days) AS Expected_Transit_Time
FROM `supply-chain-analysis-496516.supplychainanalysis.customer_orders_cleaned`
GROUP BY `Customer City`
ORDER BY Avg_Transit_Time DESC LIMIT 25;

# Cities with the most Late Deliveries
SELECT `Customer City`,count(`Delivery Status`) AS `Late Deliveries` FROM `supply-chain-analysis-496516.supplychainanalysis.customer_orders_cleaned`WHERE `Delivery Status` = 'Late delivery' GROUP BY `Customer City` ORDER BY `Late Deliveries` DESC Limit 25;
