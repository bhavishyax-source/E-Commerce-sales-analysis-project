-- Total orders

select count(*) as total_orders from dbo.orders;

-- Total sales

select sum(Net_amount) as Total_sales from dbo.orders;

-- Top products

select Product,sum(Net_amount) as sales
from orders
group by Product
order by sales desc;

-- Top city

select City,sum(Net_amount) as sales
from orders
group by City
order by sales desc;

-- Monthly Sales

select Month, sum(Net_amount) as sales
from dbo.orders
group by Month;

-- highest profit products

select product,
sum(profit) as profit
from dbo.orders
group by product
order by profit desc;

-- payment mode distribution

SELECT
    payment_mode,
    COUNT(*) AS total_orders
FROM orders
GROUP BY payment_mode
ORDER BY total_orders DESC;

-- Cancelled orders

select * 
from orders
where order_status = 'cancelled';