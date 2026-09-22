-- Question- Which previously valuable customers are now inactive or at risk of churn, 
-- and how much historical revenue is associated with them?	Churn / At-Risk Customers

with customer_summary as(select customer_id,
	max(order_date) as last_order_date, 
	COUNT(DISTINCT order_id) AS total_orders,
	sum(total_amount) as historical_revenue
from orders
join order_items using(order_id)
group by customer_id)

select *, datediff((select max(order_date) from orders), last_order_date) as inactive_days,
     CASE
           WHEN DATEDIFF((SELECT MAX(order_date) FROM orders), last_order_date) > 90
                THEN 'Churned'
           WHEN DATEDIFF((SELECT MAX(order_date) FROM orders), last_order_date) > 60
                THEN 'At Risk'
           ELSE 'Active'
       END AS `Customer status`
from customer_summary
where datediff((select max(order_date) from orders), last_order_date) > 60
ORDER BY inactive_days DESC;
