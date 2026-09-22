-- Question- Which customer segments contribute the most revenue, orders, 
-- and average order value, and which segments appear underperforming?	Segment Performance

with customer_value as(select customer_id,customer_type,
  count(distinct order_id)as orders,
  sum(total_amount) as revenue
from customers
join orders using(customer_id)
join order_items using(order_id)
group by customer_id,customer_type )

select 
  customer_type as Segment,
  count(customer_id) as `Total customer`,
  sum(orders) as `Total orders`,
  sum(revenue) as Total_revenue,
  sum(revenue)/sum(orders) as AOV
from customer_value
group by customer_type
order by Total_revenue desc;
