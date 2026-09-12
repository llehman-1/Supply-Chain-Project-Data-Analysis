# Which Shipping mode has the lowest late delivery risk? the highest?
SELECT `Shipping Mode`, AVG(`Expected_Ship_Days`) AS `Expected Transit Days`, AVG(`Actual_Transit_Days`) AS `Actual Transit Days` FROM `supply-chain-analysis-496516.supplychainanalysis.customer_orders_cleaned` GROUP BY `Shipping Mode`;

# what are the different delivery types
SELECT DISTINCT `Delivery Status` FROM `supply-chain-analysis-496516.supplychainanalysis.customer_orders_cleaned`;

# what is the count of each delivery type?
SELECT `Delivery Status`,COUNT(`Delivery Status`) AS `Shipping mode` FROM `supply-chain-analysis-496516.supplychainanalysis.customer_orders_cleaned` GROUP BY `Delivery Status` ORDER BY `Delivery Status` DESC;

#delivery status result based on each shipping mode
SELECT `Shipping Mode`,`Delivery Status`, COUNT(*) AS Number_of_Orders FROM `supply-chain-analysis-496516.supplychainanalysis.customer_orders_cleaned` GROUP BY `Shipping Mode`, `Delivery Status` ORDER BY `Shipping Mode`, Number_of_Orders DESC;

# Percentage of late deliveries for each shipping mode
SELECT
    `Shipping Mode`, COUNT(*) AS Total_Orders, SUM(Late_delivery_risk) AS Late_Orders, ROUND(AVG(Late_delivery_risk) * 100,2) AS Late_Delivery_Percentage FROM `supply-chain-analysis-496516.supplychainanalysis.customer_orders_cleaned` GROUP BY `Shipping Mode` ORDER BY Late_Delivery_Percentage DESC;