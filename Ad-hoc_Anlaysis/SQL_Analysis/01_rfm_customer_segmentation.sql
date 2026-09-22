-- Question- Who are our most valuable customers based on Recency, Frequency, 
-- 		and Monetary value, and how should they be grouped into actionable customer segments?	RFM Segmentation

with rfm as(select customer_id, 
  datediff((select max(order_date)  from orders),max(order_date)) as recency,
  count(distinct order_id) as frequency,
  sum(total_amount) as monetary
from orders
join order_items using(order_id)
group by customer_id)

, rfm_scores as (select *, 
    ntile(5) over(order by recency desc) as r_score,
    ntile(5) over (order by frequency asc) as f_score,
    ntile(5) over (order by monetary asc) as m_score
from rfm)
select *,
CASE
   WHEN r_score >= 4 AND f_score >= 4 AND m_score >= 4 THEN 'Champions'
   WHEN r_score >= 3 AND f_score >= 3 THEN 'Loyal'
   WHEN r_score >= 4 AND f_score <= 2 THEN 'New / Promising'
   WHEN r_score <= 2 AND f_score >= 3 THEN 'At Risk'
   ELSE 'Regular' END AS customer_segment 
from rfm_scores
order by monetary desc;