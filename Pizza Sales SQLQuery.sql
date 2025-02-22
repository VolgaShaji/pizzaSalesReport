
Select * from pizza_sales


Select SUM(total_price) AS Total_Revenue from pizza_sales

Select SUM(total_price)/	COUNT( DISTINCT order_id) as Avg_Order_Value from pizza_sales

Select SUM(quantity) AS Total_Pizza_Sold from pizza_sales

Select COUNT(DISTINCT order_id) AS Total_Oders from pizza_sales

Select CAST(CAST(SUM(quantity) AS decimal(10,2)) / CAST(COUNT (DISTINCT order_id) AS decimal(10,2)) AS decimal(10,2)) AS Avg_Pizzas_Per_Order  from pizza_sales 



Select DATENAME(DW, order_date) AS order_day, COUNT( DISTINCT order_id) AS total_orders from pizza_sales GROUP BY DATENAME(DW, order_date)

Select DATENAME(MONTH, order_date) as Month_Name, COUNT(DISTINCT order_id) as Total_Orders from pizza_sales GROUP BY DATENAME(MONTH, order_date)

Select pizza_category, CAST(SUM(total_price) AS DECIMAL(10,2)) as total_revenue,
CAST(SUM(total_price) * 100 / (SELECT SUM(total_price) from pizza_sales) AS DECIMAL(10,2)) AS PCT
FROM pizza_sales
GROUP BY pizza_category

Select pizza_size, CAST(SUM(total_price) AS DECIMAL(10,2)) as total_revenue,
CAST(SUM(total_price) * 100 / (SELECT SUM(total_price) from pizza_sales) AS DECIMAL(10,2)) AS PCT
FROM pizza_sales
GROUP BY pizza_size
ORDER BY pizza_size

Select pizza_category, SUM(quantity) as Total_Quantity_Sold
FROM pizza_sales
WHERE MONTH(order_date) = 2
GROUP BY pizza_category
ORDER BY Total_Quantity_Sold DESC

Select Top 5 pizza_name, SUM(total_price) AS Total_Revenue
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Revenue DESC

Select Top 5 pizza_name, SUM(total_price) AS Total_Revenue
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Revenue ASC

Select Top 5 pizza_name, SUM(quantity) AS Total_Pizza_Sold
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Pizza_Sold DESC

Select Top 5 pizza_name, SUM(quantity) AS Total_Pizza_Sold
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Pizza_Sold ASC

Select Top 5 pizza_name, COUNT(DISTINCT order_id) AS Total_Orders
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Orders DESC

Select Top 5 pizza_name, COUNT(DISTINCT order_id) AS Total_Orders
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Orders ASC











