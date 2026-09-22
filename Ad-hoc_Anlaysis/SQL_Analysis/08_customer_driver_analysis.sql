-- Question- What differentiates high-value/loyal customers from low-value or at-risk 
--           customers in terms of product/category preference, returns, ratings and geography?

select region, category_name,
    count(DISTINCT customer_id) AS customers,
    count(DISTINCT order_id) AS orders,
    round(SUM(total_amount), 2) AS revenue,
    round(SUM(total_amount) / count(DISTINCT customer_id), 2)
        AS revenue_per_customer
from customers 
join orders using(customer_id)
join order_items using(order_id)
join products using(product_id)
join categories using(category_id)
group by region, category_name
order by revenue desc;