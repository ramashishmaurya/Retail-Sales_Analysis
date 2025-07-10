use abc ;
select * from superstore ;

## sales by city of top 10 
SELECT
City ,
Sales
from superstore 
order by Sales desc limit 10 ;

###########################################3

SELECT
ship_date ,
count(*) 
from superstore
WHERE ship_date is not null  
GROUP BY ship_date ;

###############################
# total sum of sales by the region here 

SELECT
Region ,
sum(Sales) as sum_value
from superstore 
GROUP BY Region
ORDER BY sum_value;

###########################333

# 1. What are the total sales and profit by region? 
SELECT
  Region,
  ROUND(SUM(Sales), 2) AS Total_Sales,
  ROUND(SUM(Profit), 2) AS Total_Profit
FROM superstore
GROUP BY Region
ORDER BY Total_Profit DESC;

############################################3

# Who are the top 5 customers by total sales?

SELECT 
customer_name , 
sum(Sales) as Total_sales
from superstore 
GROUP BY customer_name 
ORDER BY  Total_sales desc  limit 10 ;

#########################################33
# Which product categories have the highest average discount?
select 
  Category , 
  round(avg(Discount)*100 ,2) as total_average
  from superstore 
  GROUP BY category 
  ORDER BY total_average DESC ;
  
############################################

#What is the monthly sales trend?

SELECT
  EXTRACT(YEAR FROM "Order Date") AS Year,
  EXTRACT(MONTH FROM "Order Date") AS Month,
  ROUND(SUM(Sales), 2) AS Monthly_Sales
FROM superstore
GROUP BY Year, Month
ORDER BY Year, Month;

#############################333

# Which sub-categories are making a loss overall?

SELECT * from superstore ;

SELECT
  Sub-Category,
  ROUND(SUM(Profit), 2) AS Total_Profit
FROM superstore
GROUP BY Sub-Category
HAVING SUM(Profit) < 0
ORDER BY Total_Profit;

##################################333
# average ship delay time 

SELECT
  "Ship Mode",
  ROUND(AVG(date_diff), 2) AS Avg_Shipping_Delay_Days
FROM superstore
GROUP BY "Ship Mode"
ORDER BY Avg_Shipping_Delay_Days;

################################################

#  Profit by segment and category — who brings more value?

SELECT
  Segment,
  Category,
  ROUND(SUM(Profit), 2) AS Total_Profit
FROM superstore
GROUP BY Segment, Category
ORDER BY Total_Profit DESC;

#########################################











  
  


































