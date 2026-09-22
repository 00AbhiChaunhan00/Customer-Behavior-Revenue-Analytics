-- Question- How does customer purchase frequency vary across the customer base, and how much revenue 
--           is contributed by one-time, repeat, loyal, and high-frequency customers?
          
with customer_data as(
    select customer_id,
        count(DISTINCT order_id) AS total_orders,
        sum(total_amount) AS revenue
    FROM orders 
    JOIN order_items oi using(order_id)
    group by customer_id
),
customer_group as (
select *,
        case
            when total_orders = 1 then 'One-Time'
            when total_orders <= 3 then 'Repeat'
            when total_orders <= 5 then 'Loyal'
            else 'High-Frequency' end as customer_type
from customer_data )

SELECT customer_type,
    count(*) as customers,
    sum(total_orders) as total_orders,
    round(SUM(revenue), 2) as revenue,
    round(SUM(revenue) / SUM(total_orders), 2) as avg_order_value
from customer_group
group by customer_type
order by revenue DESC;