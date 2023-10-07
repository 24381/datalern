SELECT city,COUNT(distinct ORDER_ID) as ORDERRS_NUMBER,
sum(sales) as revenue
from orders 
where  category = 'Furniture' 
group by city 
having sum(sales)>100
order by revenue desc

select count(*),
count(distinct o.order_id)
from orders o left join returns n on o.order_id = n.order_id


select count(*),
count(distinct o.order_id)
from orders o 
where order_id in(select distinct order_id from "returns" r  )

