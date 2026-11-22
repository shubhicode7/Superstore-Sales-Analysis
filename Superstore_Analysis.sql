USE ecommerceDB;

CREATE TABLE Superstore (
    Sales DECIMAL(10,2)
);

SELECT SUM(Sales) AS Total_Sales
FROM Superstore;
USE ecommerceDB;

USE ecommerceDB;

SELECT SUM(Sales) AS Total_Sales
FROM superstore;
SELECT COUNT(*) AS Total_Rows
FROM superstore;
SELECT SUM(Profit) AS Total_Profit
FROM superstore;
SELECT COUNT(DISTINCT `Order ID`) AS Total_Orders
FROM superstore;
SELECT COUNT(DISTINCT `Customer ID`) AS Total_Customers
FROM superstore;
SELECT
    Category,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM superstore
GROUP BY Category
ORDER BY Total_Sales DESC;
SELECT
    Region,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM superstore
GROUP BY Region
ORDER BY Total_Profit DESC;
SELECT
    `Product Name`,
    SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY `Product Name`
ORDER BY Total_Sales DESC
LIMIT 10;
SELECT
    DATE_FORMAT(STR_TO_DATE(`Order Date`, '%m/%d/%Y'), '%Y-%m') AS Month,
    SUM(Sales) AS Monthly_Sales
FROM superstore
GROUP BY Month
ORDER BY Month;
SELECT
    Segment,
    SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY Segment
ORDER BY Total_Sales DESC;
SELECT
    `Product Name`,
    SUM(Profit) AS Total_Profit
FROM superstore
GROUP BY `Product Name`
HAVING SUM(Profit) < 0
ORDER BY Total_Profit ASC
LIMIT 10;