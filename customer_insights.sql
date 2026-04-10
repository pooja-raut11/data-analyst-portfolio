-- Customer Insights Analysis

-- Total Orders
SELECT COUNT(OrderID) AS Total_Orders FROM sales_data;

-- Average Sales
SELECT AVG(Sales) AS Avg_Sales FROM sales_data;

-- Region Performance
SELECT Region, COUNT(*) AS Orders
FROM sales_data
GROUP BY Region
ORDER BY Orders DESC;
