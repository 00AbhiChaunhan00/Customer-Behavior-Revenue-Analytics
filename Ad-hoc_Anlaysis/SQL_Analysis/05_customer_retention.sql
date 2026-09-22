-- Question- What percentage of customers return to purchase in the 
--           following month, and how has customer retention changed over time?	

with customer_month as(select distinct customer_id,
         date_format(order_date, '%Y-%m-01') as order_month
from orders ),

prev_month as(select *, 
         lag(order_month)over (partition by customer_id order by order_month) as prev_month
from customer_month ),

retained_customers as(select order_month as month,
    count(*) as total_customer,
	count(case when prev_month = order_month - Interval 1 month then 1 end) as total_retained_customers
from prev_month
group by order_month )

select month, 
	total_customer as ` Total customer`, 
	total_retained_customers as `Retained Customers`,
	concat(round(total_retained_customers*100.0/ lag(total_customer)over (order by month),2),'%') as  `Retention %`
from retained_customers
order by month;