-- Question- How are new and returning customers changing 
--            month-over-month, and which group contributes more revenue and orders?	

with order_details as(select order_id,
  customer_id, order_date,
  sum(total_amount) as order_revenue,
  min(order_date) over( partition by customer_id) as first_order_date
from orders
join order_items using(order_id)
group by order_id,customer_id,order_date)

select date_format(order_date, '%Y-%m') AS month,
       case when date_format(order_date, '%Y-%m')=date_format(first_order_date, '%Y-%m') 
             then 'New' else 'Returning' end as customer_group,
   count(DISTINCT customer_id) AS customers,
   count(DISTINCT order_id) AS orders,
   round(SUM(order_revenue), 2) AS revenue
from order_details
group by month, customer_group
order by month, customer_group;