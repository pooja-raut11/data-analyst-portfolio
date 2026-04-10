-- Total Sales
SELECT SUM(Sales) AS Total_Sales FROM sales_data;

-- Sales by Region
SELECT Region, SUM(Sales) AS Total_Sales
FROM sales_data
GROUP BY Region;

-- Top Products
SELECT Product, SUM(Sales) AS Revenue
FROM sales_data
GROUP BY Product
ORDER BY Revenue DESC;

-- Profit by Category
SELECT Category, SUM(Profit) AS Total_Profit
FROM sales_data
GROUP BY Category;
