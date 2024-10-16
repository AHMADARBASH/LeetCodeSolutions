with a as (
select customer_number,
rank() over (partition by customer_number order by order_number) as r
 from orders )
 select top(1) a.customer_number from a order by a.r desc
